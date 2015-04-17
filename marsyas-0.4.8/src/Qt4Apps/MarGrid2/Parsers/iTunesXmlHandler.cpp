#include "iTunesXmlHandler.h"
#include <QUrl>
#include <iostream>

iTunesXmlHandler::iTunesXmlHandler(MusicCollection *collection) 
	: _collection(collection)
{
	
	_okToParse = false;
	_inLibrary = false;
	_inTrackList = false;
	_inTrack = false;
	_inPlaylist = false;
	_inPlaylists = false;

	_errorStr.clear();
	_currentText.clear();
	_currentKey.clear();

	if ( !_collection ) {
		_errorStr = QObject::tr("The collection supplied is NULL, needs to be not NULL");
	}
}

bool iTunesXmlHandler::characters(const QString &str) {
	_currentText += str;
	return true;
}

bool iTunesXmlHandler::startElement(const QString & /* namespaceURI */,
				   const QString & /* localName */,
                                   const QString &qName,
                                   const QXmlAttributes &attributes) {

	if ( "plist" == qName ) {
		QString version = attributes.value("version");
		if ( !version.isEmpty() && version != "1.0" ) {
			_errorStr = QObject::tr("This file is not a value iTunes Library file");
			return false;
		}
		std::cout << "Ok to parse\n";
		_okToParse = true;
	}

	//Start the parsing
	if ( _inLibrary && _okToParse ) {
		if ( _inTrackList ) {
			if ( _inTrack ) {
				if ( "key" != qName || "integer" != qName || "string" != qName ) {
					_errorStr = QObject::tr("Unrecognized type for track %1")
							.arg(qName);
				}
				
			//Not in track, if dict enter
			} else if ( "dict" == qName ) {
				_inTrack = true;	//Track DICT tag
				_currentTrack = new MusicTrack();
			
			} else if ( "key" == qName ) {
				//ignore currently
			}
		
		} else if ( "key" == qName ) {
			//clear previous key value
			_currentKey.clear();	
	
		//Not in track list, if dict && previous key "Tracks" enter
		} else if ( "dict" == qName && "Tracks" == _currentKey ) {
			_inTrackList = true;	//Tracks DICT tag

		} 

		if ( _inPlaylists ) {
			if ( _inPlaylist ) {

			} else if ( "array" == qName ) {
				_inPlaylist = true;
			}

		} else if ( "array" == qName && "Playlists" == _currentKey ) {
			_inPlaylists = true;
		}
	
	//Not in library, if dict then enter
	} else if ( "dict" == qName && _okToParse ) {
		_inLibrary = true; 	//Library DICT tag 
	}
	_currentText.clear();
	return true;
}

bool iTunesXmlHandler::endElement(const QString & /* namespaceURI */,
                                 const QString & /* localName */,
                                 const QString &qName) {
	if ( _inLibrary ) {
		if ( _inTrackList ) {
			if ( _inTrack ) {
				if ( "key" == qName ) {
					_currentKey = _currentText;
				} else if ( "integer" == qName ) {
					addIntegerAttribute(_currentKey, _currentText);	
				} else if ( "string" == qName ) {
					addStringAttribute(_currentKey, _currentText);	
				
				} else if ( "dict" == qName ) {
					//Add track to collection
					_inTrack = false;	//Track DICT tag
					_collection->addTrack(_currentTrack);
				//	std::cout << "Adding Track:\n" << _currentTrack->getTitle() << std::endl;
					_currentTrack = NULL;		
				}
	
			} else if ( "key" == qName ) {
				//not needed

			} else if ( "dict" == qName ) {
				//Not in track list, if dict enter
				_inTrackList = false;	//Tracks DICT tag
			}

		} else if ( _inPlaylists ) {
			if ( _inPlaylist ) {
				if ( "key" == qName ) {
					_currentKey = _currentText;

				} else if ( "integer" == qName && "Track ID" == _currentKey ) {
					int id = _currentText.toInt();
					MusicTrack *track = _collection->getTrackById(id);
					if ( track ) {
						_currentPlaylist->linkTrack(track);
					}
				} else if ( "array" == qName ) {
					_collection->addPlaylist(_currentPlaylist);
				
					/*	
					MusicTrackIterator it = _currentPlaylist->getTracks();
					while( it.hasNext() ) {
						std::cout << "\t" << (*it.next()).getTitle() << std::endl;
					}
					*/
					
					_currentPlaylist = NULL;
					_inPlaylist = false;
				}

			} else if ( "string" == qName && "Name" == _currentKey ) {
				_currentPlaylist = new MusicPlaylist(_currentText);

			} else if ( "key" == qName ) {
				_currentKey = _currentText;

			} else if ( "array" == qName ) {
				_inPlaylists = false;
			}
	
		} else if ( "key" == qName ) {
			_currentKey = _currentText;
	
		//Not in library, if dict then enter
		} else if ( "dict" == qName ) {
			_inLibrary = false; 	//Library DICT tag 
		}
	}
	_currentText.clear();
	return true;
}


void iTunesXmlHandler::addIntegerAttribute(const QString &key, const QString &text) {
	int val = text.toInt();

	if ( "Track ID" == key ) {
		_currentTrack->setTrackId(val);
	} else if ( "Size" == key ) {
		_currentTrack->setSize(val);
	} else if ( "Total Time" == key ) {
		_currentTrack->setLength(val);
	} else if ( "Track Number" == key ) {
		_currentTrack->setNumber(val);
	} else if ( "MarGrid_xpos" == key ) {
		_currentTrack->setX(val);
	} else if ( "MarGrid_ypos" == key ) {
		_currentTrack->setY(val);
	}
}

void iTunesXmlHandler::addStringAttribute(const QString &key, const QString &text) {
	if ( "Name" == key ) {
		_currentTrack->setTitle(text);
	} else if ( "Artist" == key ) {
		_currentTrack->setArtist(text);
	} else if ( "Album" == key ) {
		_currentTrack->setAlbum(text);
	} else if ( "Genre" == key ) {
		_currentTrack->setGenre(text);
	} else if ( "Kind" == key ) {
		_currentTrack->setKind(text);
	} else if ( "Year" == key ) {
		_currentTrack->setYear(text);
	} else if ( "Location" == key ) {
		//QString s = QString::fromUtf8(text.toStdString().c_str());
		//QString s = text;
	//	QByteArray encodedString =text.toUtf8();
			
		//QByteArray encodedString = "file://localhost/C:/Documents%20and%20Settings/Manj/Desktop/ManjFall2007/Music/iTunes/iTunes%20Music/%C3%9Cmanz/Nu%20Main/01%20Ma%20Luciole.mp3";
		//QUrl *url = new QUrl();
		//url->setEncodedUrl(encodedString);
		// QByteArray encodedString = text.toUtf8();
		// QString s = QUrl::fromPercentEncoding(encodedString);
		QString s = text;
		
		/*
		// QByteArray encodedString = "%C3%9Cmanz";
		QByteArray decodedString = QByteArray::fromPercentEncoding(encodedString);	
		const char * decodedStringChar = decodedString.data();
		QString decodedFromPercent = QString::fromUtf8(decodedStringChar);
		// QTextCodec *codec = QTextCodec::codecForName("UTF-8");
        // QString string = codec->toUnicode(encodedString); 
		QString s = decodedFromPercent;
		*/
		


		//qDebug() <<string;
		//std::cout<<decodedStringChar<<"\n";
		//std::cout<<s<<"\n";
		//std::cout<<"read in filenames:"<<s.toStdString()<<"\n";
	
		//QString s = "�";
		//std::cout<<s.toStdString()<<"\n";

		// get rid of XML specific encoding
		s.replace(QRegExp("%20"), " ");
		s.replace(QRegExp("%5B"), "[");
		s.replace(QRegExp("%5D"), "]");
		s.replace(QRegExp("&#38"), "&");
		s.replace(QRegExp("%3B"), ";");
		s.replace(QRegExp("%7B"), "{");
		s.replace(QRegExp("%7D"), "}");
		s.replace(QRegExp("%5E"), "^");
		s.replace(QRegExp("%60"), "`");
		s.replace(QRegExp("%25"), "%");
		s.replace(QRegExp("%23"), "#");

		// Watch out for trimming the leading '/' out of the file path
		#if (defined(Q_OS_DARWIN) || defined(Q_OS_LINUX))
			s.replace(QRegExp("file://localhost"), "");
		#else // windows file paths are assumed to be the else
			s.replace(QRegExp("file://localhost/"), "");
		#endif

		/* 
		   Marsyas does everything in Windows with '\' as the path delmiter like a good app 
		   while Apple has decided that iTunes gets to ignore windows convetions and use '/'
		*/
		#if defined(Q_OS_WIN32)
			s.replace(QRegExp("/"), "\\");
		#endif
		
		_currentTrack->setLocation(s);
	} else if ( "Track Type" == key ) {
		_currentTrack->setType(text);
	}
}

bool iTunesXmlHandler::fatalError(const QXmlParseException &exception) {
	_errorStr = QObject::tr("Parse error at line %1, column %2:\n%3")
				.arg(exception.lineNumber())
				.arg(exception.columnNumber())
				.arg(exception.message());
	return false;
}

QString iTunesXmlHandler::errorString() const {
	return _errorStr;
}



