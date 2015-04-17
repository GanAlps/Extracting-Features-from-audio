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

#ifndef MARSYAS_METRIC_H
#define MARSYAS_METRIC_H

#include "MarSystem.h"	

namespace Marsyas
{
/** 
	\class Metric
	\ingroup MarSystem
	\brief Computes metrics (e.g. euclidean, mahalanobis, cosine, etc) between two realvecs

	Controls:
	- \b mrs_string/metric [rw] : name of the metric function to use (e.g. euclidean, mahalanobis, cosine, etc)
	- \b mrs_realvec/covMatrix [w]: optional covariance matrix calculated from the input dataset used for metric normalization
*/
  class Metric: public MarSystem
  {
  private:
		MarControlPtr ctrl_metric_;
		MarControlPtr ctrl_covMatrix_;
		realvec vec_i_;
		realvec vec_j_;

		//function pointer to the method that actually does the metric computation
		mrs_real (*metricFunc_)(const realvec& vec_i, const realvec& vec_j, const realvec& cov);

    void addControls();
    void myUpdate(MarControlPtr sender);
    
  public: 
    Metric(std::string name);
    Metric(const Metric& a);
    ~Metric();

    MarSystem* clone() const;  
    void myProcess(realvec& in, realvec& out);
  };
}

#endif



