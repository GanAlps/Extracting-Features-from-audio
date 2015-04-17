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

#ifndef MARSYAS_CARTESIAN2POLAR_H
#define MARSYAS_CARTESIAN2POLAR_H

#include "MarSystem.h"	

namespace Marsyas
{
/** 
	\class Cartesian2Polar
	\ingroup Notmar
	\brief perform conversion of spectral values
*/


class Cartesian2Polar: public MarSystem
{
private: 
  //Add specific controls needed by this MarSystem.
	void addControls();

	void myUpdate(MarControlPtr sender);

public:
  Cartesian2Polar(std::string name);
	Cartesian2Polar(const Cartesian2Polar& a);
  ~Cartesian2Polar();
  MarSystem* clone() const;  
  
  void myProcess(realvec& in, realvec& out);
};

}//namespace Marsyas

#endif
