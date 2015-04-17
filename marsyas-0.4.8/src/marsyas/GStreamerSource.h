/*
** Copyright (C) 2012 Nate Bogdanowicz <natezb@gmail.com>
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

#include "config.h"

#ifndef MARSYAS_GSTREAMERSOURCE_H
#define MARSYAS_GSTREAMERSOURCE_H

#include "AbsSoundFileSource.h"
#include <sys/stat.h>

#ifdef MARSYAS_GSTREAMER
#include <glib.h>
#include <gst/gst.h>
#include <gst/app/gstappsink.h>
#endif 

namespace Marsyas
{

	/**
	   \class GStreamerSource
		\ingroup Interal
	   \brief SoundFileSource which uses GStreamer to decode an input file
	*/
	
	
	class GStreamerSource : public AbsSoundFileSource
	{
		private: 
			mrs_natural size_, tpos_;
			mrs_string filename_, tfilename_;
			mrs_bool playing_, pipe_created_;
			
			/* GStreamer Elements */
#ifdef MARSYAS_GSTREAMER
			GstElement *pipe_, *dec_, *sink_;
			GstBuffer *buffer_;
#endif 

			/* These measured in # of SAMPLES per channel */
			mrs_natural buffer_left_;
			mrs_natural buffer_size_;
			
			void addControls();
			void myUpdate(MarControlPtr sender);
			void getHeader(mrs_string filename);
			void init_pipeline();
			mrs_bool seek();
			mrs_bool pull_buffer();
			void copyFromBuffer(GstBuffer    *buf,
					    mrs_natural  buf_start,
					    realvec&     vec,
					    mrs_natural  vec_start,
					    mrs_natural  length);
		
		public:
			GStreamerSource(std::string name);
			~GStreamerSource();
			
			MarSystem* clone() const;
			void myProcess(realvec& in,realvec &out);
	};

}//namespace Marsyas

#endif    // !MARSYAS_GSTREAMERSOURCE_H
