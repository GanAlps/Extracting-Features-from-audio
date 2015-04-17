/*
** Copyright (C) 1998-2006 George Tzanetakis <gtzan@cs.uvic.ca>
**  
** This program is free software; you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation; either version 2 of the License, or
** (at your option) any later version.
** 
** This program is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
** 
** You should have received a copy of the GNU General Public License
** along with this program; if not, write to the Free Software 
** Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
*/

/** 
    \class Mapper
    \brief Mapper maps the state of the GUI to MarSystemQtWrapper 

    MainWindow connects various signals to slots of Mapper 
and Mapper converts and maps the corresponding values to 
the appropriate slots of MarSystemQtWrapper. Also 
Mapper creates the playback network of MarSystems 
and also receives updates from the MarSystemQtWrapper 
which it signals to MainWindow to update the GUI. 
*/

#ifndef MAPPER_H
#define MAPPER_H

#include <QObject> 
#include <QTimer>
#include "MarSystemManager.h" 
#include "MarSystemQtWrapper.h"

class Mapper: public QObject
{
    Q_OBJECT

public:
    Mapper();
  ~Mapper();
  
public slots: 
   void open(QString fileName, int val);
  void setPos(int value);
  void setPos(); 
  void setGain(int value);
  void play();
  void pause();
  
signals: 
    void posChanged(int val);
    void durationChanged(Marsyas::mrs_real val);
    void timeChanged(Marsyas::mrs_real val);
  
private:
  Marsyas::mrs_real duration_;
  

  MarControlPtr filePtr_;
  MarControlPtr gainPtr_;
  MarControlPtr repPtr_;
  MarControlPtr posPtr_;
  MarControlPtr sizePtr_;
  MarControlPtr osratePtr_;
  MarControlPtr initPtr_; 
  
  
  
  MarsyasQt::MarSystemQtWrapper* mwr_;   // the wrapper that turns 
                            // any MarSystem into 
                            // Qt-like object with 
                            // signals and slots 
  
  Marsyas::MarSystem* pnet_;// the playback network 

};

#endif
	
