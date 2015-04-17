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

#ifndef MARSYAS_NetworkTCPSource_H
#define MARSYAS_NetworkTCPSource_H

#include "NetworkSocket.h"

namespace Marsyas
{
/** 
    \class NetworkTCPSource
	\ingroup Network
    \brief NetworkTCPSource
    \author Stuart Bray 

    NetworkSource that uses the TCP communication protocol
*/


class NetworkTCPSource: public NetworkSocket
{
	
 private: 
  void addControls();
  
  
 public:
  
  NetworkTCPSource( std::string name );
  ~NetworkTCPSource();
  MarSystem* clone() const;  
  
  std::string getClientAddr();

  void myProcess( realvec& in, realvec& out );
  void refresh();
  
};

}//namespace Marsyas

#endif
