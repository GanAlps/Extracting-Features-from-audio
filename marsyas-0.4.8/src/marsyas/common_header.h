#ifndef MARSYAS_COMMONHEADER_H
#define MARSYAS_COMMONHEADER_H

/**
	\file common_header.h
	\ingroup NotmarCore
*/

/************************************************************************/
/*      common includes                                                 */
/************************************************************************/

#include <cstdio> 
#include <sys/types.h> 
#include <complex>
#include <limits>
#include "marsyas_types.h"
#include "MrsLog.h"


/************************************************************************/
/*      common constants */
/************************************************************************/
namespace Marsyas
{
	// constants
	const mrs_natural MRS_DEFAULT_SLICE_NSAMPLES = 512;
	const mrs_natural MRS_DEFAULT_SLICE_NOBSERVATIONS = 1;
	const mrs_real    MRS_DEFAULT_SLICE_SRATE = 22050.0;

	const mrs_natural FFT_FORWARD = 1;
	const mrs_natural FFT_INVERSE = 0;

	const mrs_string EMPTYSTRING = "MARSYAS_EMPTY";
	#undef max //WTF??
	#undef min //WTF??

	const mrs_real MAXREAL = std::numeric_limits<mrs_real>::max();
	const mrs_real MINREAL = std::numeric_limits<mrs_real>::min();
	const mrs_natural MAXNATURAL = std::numeric_limits<mrs_natural>::max();
	const mrs_natural MINNATURAL = std::numeric_limits<mrs_natural>::min();

	// double precision
	#ifdef PI 
	#undef PI //to avoid clashes with other macros defined for PI in other libs... 
	#endif
	const mrs_real PI = 3.14159265358979323846;
	const mrs_real TWOPI = 6.28318530717958647692;


} //namespace Marsyas

/************************************************************************/
/*  common defines                                                      */
/************************************************************************/

//used for PCM audio => should not be changed!
#define PCM_MAXSHRT 32767 
#define PCM_FMAXSHRT 32767.0f 

#ifdef NDEBUG 
#define MRSASSERT(f) 
#else 
#define MRSASSERT(f) \
        if (f)       \
             {}      \
        else         \
           MrsLog::mrsAssert(__FILE__, __LINE__)
#endif 


#define MRSMSG(x) {std::ostringstream oss; MrsLog::mrsMessage((std::ostringstream&)(oss << x));}


#define MRSERR(x) {std::ostringstream oss; MrsLog::mrsErr((std::ostringstream&)(oss << x));}

#define MRSWARN(x) {std::ostringstream oss; MrsLog::mrsWarning((std::ostringstream&)(oss << x));}

#define MRSDIAG(x) {std::ostringstream oss; MrsLog::mrsDiagnostic((std::ostringstream&)(oss << x));}

#define MRS_WARNINGS_OFF MrsLog::warnings_off_ = true;
#define MRS_WARNINGS_ON MrsLog::warnings_off_ = false;
#define MRS_MESSAGES_OFF MrsLog::messages_off_ = true;	
#define MRS_MESSAGES_ON MrsLog::messages_off_ = false;	

//	Macros for marking functions as deprecated.
//	DEPRECATED(void OldFunc(int a, float b));

#ifdef __GNUC__
#define DEPRECATED(func) func __attribute__ ((deprecated))
#elif defined(_MSC_VER)
#define DEPRECATED(func) __declspec(deprecated) func
#else
#pragma message("WARNING: You need to implement DEPRECATED for this compiler")
#define DEPRECATED(func) func
#endif


#endif /* !MARSYAS_COMMONHEADER_H */ 
	
