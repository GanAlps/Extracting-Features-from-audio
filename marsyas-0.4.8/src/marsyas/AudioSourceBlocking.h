/*
** Copyright (C) 1998-2010 George Tzanetakis <gtzan@cs.uvic.ca>
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

#ifndef MARSYAS_AUDIOSOURCEBLOCKING_H
#define MARSYAS_AUDIOSOURCEBLOCKING_H

#include "MarSystem.h" 

class RtAudio3;

namespace Marsyas
{
/**
   \class AudioSourceBlocking
   \ingroup IO
   \brief Real-time audio source 

   Real-time Audio Source based on RtAudio.

   Controls:
   - \b mrs_natural/bufferSize [rw] : size of audio buffer (in samples)
   - \b mrs_bool/initAudio [w] : initialize audio (this should be \em true)
   - \b mrs_bool/hasData [r] : is there any audio input left?
   (End-Of-File not yet reached)
   - \b mrs_real/gain [w] : scales input
   - \b mrs_natural/nChannels [DOCME] : DOCME
   - \b mrs_natural/nBuffers [DOCME] : DOCME
*/


	class AudioSourceBlocking:public MarSystem
	{
		private:

			RtAudio3 *audio_;

			int bufferSize_;
			int nBuffers_;
			int rtSrate_;
			int rtChannels_;
			int rtDevice_;

			mrs_natural ri_;
			mrs_natural nChannels_;
			mrs_real *data_;  
			realvec reservoir_;
			mrs_natural reservoirSize_;
			mrs_natural preservoirSize_;

			mrs_real gain_;

			bool isInitialized_;
			bool stopped_;

			void addControls();
			void myUpdate(MarControlPtr sender);

			void initRtAudio();

			void start();
			void stop();

			void localActivate(bool state);
  
		public:
			AudioSourceBlocking(std::string name);
			~AudioSourceBlocking();
			MarSystem* clone() const;  

			void myProcess(realvec& in, realvec& out);
	};

}//namespace Marsyas


#endif

	

	
