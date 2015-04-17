import numpy
import scipy.signal
import pylab

import defs
import overlap

def marsyas_hamming(N):
    ns = numpy.arange(N)
    hamming = 0.54 - 0.46 * numpy.cos( 2*numpy.pi*ns / (N-1.0))
    return hamming

def onset_strength_signal(wav_sr, wav_data, plot=False):
    ### overlapping time data
    # add extra window of zeros at beginning to match marsyas
    overlapped = overlap.sliding_window(
        numpy.append(
            numpy.zeros(defs.OSS_WINDOWSIZE - defs.OSS_HOPSIZE),
            wav_data),
        #wav_data,
        defs.OSS_WINDOWSIZE, defs.OSS_HOPSIZE)
    oss_sr = wav_sr / float(defs.OSS_HOPSIZE)
    windowed = overlapped * marsyas_hamming(
        #scipy.signal.get_window( "hamming",
        defs.OSS_WINDOWSIZE)

    ### log-magnitude of FFT
    ffts = scipy.fftpack.fft(windowed, defs.OSS_WINDOWSIZE,  axis=1)
    ffts_abs = abs(ffts)[:,:ffts.shape[1]/2 + 1]
    # extra scaling to match Marsyas FFT output
    ffts_abs /= defs.OSS_WINDOWSIZE
    logmag = numpy.log(1.0 + 1000.0 * ffts_abs)

    #numpy.savetxt('log0.txt', logmag[0])
    #numpy.savetxt('log1.txt', logmag[1])

    ### flux
    flux = numpy.zeros( ffts_abs.shape[0] ) # output time signal
    prev = numpy.zeros( ffts_abs.shape[1] )
    for i in xrange( 0, ffts_abs.shape[0] ):
        diff = logmag[i] - prev
        diffreduced = diff[1:] # to match Marsyas
        diffclipped = diffreduced.clip(min=0)
        prev = numpy.copy(logmag[i])
        flux[i] = sum(diffclipped)
        #if i < 2:
        #    print diffclipped

    #numpy.savetxt('flux.txt', flux)
    ### clear out first window
    #flux[0] = 0.0

    if plot:
        ts = numpy.arange( len(flux) ) / oss_sr
        pylab.figure()
        pylab.plot( ts, flux)
    ### filter
    if defs.OSS_LOWPASS_CUTOFF > 0:
        b = scipy.signal.firwin(defs.OSS_LOWPASS_N,
            defs.OSS_LOWPASS_CUTOFF / (oss_sr/2.0) )
    #b, a = scipy.signal.butter(2, defs.OSS_LOWPASS_CUTOFF / (oss_sr/2.0) )
    #filtered_flux = scipy.signal.filtfilt(b, a, flux)
    #a = numpy.zeros(defs.OSS_LOWPASS_N)
    #a[0] = 1.0
        filtered_flux = scipy.signal.lfilter(b, 1.0, flux)
    else:
        filtered_flux = flux

    #numpy.savetxt('filtered.txt', filtered_flux)

    if plot:
        ts = numpy.arange( len(filtered_flux) ) / oss_sr
        pylab.plot( ts, filtered_flux)
        pylab.title("Onset strength signal")
    return oss_sr, filtered_flux


