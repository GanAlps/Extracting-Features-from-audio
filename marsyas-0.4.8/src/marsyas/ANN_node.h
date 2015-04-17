/*
** Copyright (C) 1998-2006 George Tzanetakis <gtzan@cs.cmu.edu>
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

#ifndef MARSYAS_ANN_NODE_H
#define MARSYAS_ANN_NODE_H

#include "MarSystem.h"	

namespace Marsyas
{
/** 
    \class ANN_node
	\ingroup none
    \brief Single node used to build Artifical Neural Networks

Essentially forms a weighted sum of the input rows of observations. 
*/


class ANN_node: public MarSystem
{
private: 
  void addControls();
	void myUpdate(MarControlPtr sender);
  realvec weights_;
  mrs_real bias_;

public:
  ANN_node(std::string name);
  ~ANN_node();
  MarSystem* clone() const;  
  
  void myProcess(realvec& in, realvec& out);
};

}//namespace Marsyas

#endif
	
	
