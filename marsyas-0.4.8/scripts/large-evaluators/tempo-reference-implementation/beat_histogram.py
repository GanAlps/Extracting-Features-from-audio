import numpy
import pylab
import scipy.fftpack

import defs
import overlap

def autocorrelation(signal):
    """ this matches Marsyas exactly. """
    N = signal.shape[1]
    ffts = scipy.fftpack.fft(signal, 2*N, axis=1) / (2*N)
    ffts_abs = abs(ffts)
    ffts_abs_scaled = ffts_abs**0.5
    scratch = (scipy.fftpack.ifft(ffts_abs_scaled, axis=1
        ).real)*(2*N)
    xcorr = scratch[:,:N]
    return xcorr


def find_peaks(signal, number=10, peak_neighbors=1):
    candidates = []
    for i in xrange(200, 720):
        if signal[i-1] < signal[i] > signal[i+1]:
            ok = True
            for j in xrange(i-peak_neighbors, i):
                if signal[j] >= signal[i]:
                    ok = False
            for j in xrange(i+1, i+peak_neighbors):
                if signal[j] >= signal[i]:
                    ok = False
            if ok:
                candidates.append( (signal[i], i) )
    candidates.sort(reverse=True)

    peaks = []
    #pylab.figure()
    #pylab.plot(signal)
    for c in candidates[:number]:
        index = c[1]
        mag = c[0]
        peaks.append(index)
        #print c
        #pylab.plot(index, mag, 'o')
    #pylab.show()

    return numpy.array(peaks)


def beat_histogram(oss_sr, oss_data, plot=False):
    ### overlap
    overlapped = overlap.sliding_window(
        numpy.append(
            numpy.zeros(defs.BH_WINDOWSIZE - defs.BH_HOPSIZE),
            oss_data),
        #oss_data,
        defs.BH_WINDOWSIZE, defs.BH_HOPSIZE)
    #beat_histogram_sr = oss_sr / defs.BH_HOPSIZE

    ### autocorrelation
    autocorr = autocorrelation(overlapped)

    ### beat histogram
    Hn = numpy.zeros( (autocorr.shape[0], 4*defs.BPM_MAX) )
    for i in xrange( autocorr.shape[0] ):
        if i > 0 and i != (defs.BH_WINDOWSIZE / defs.BH_HOPSIZE):
            Hn[i] = Hn[i-1]
        prev_Hni = 4*defs.BPM_MAX-1
        pprev_Hni = prev_Hni
        sumamp = 0.0
        count = 1

        for j in xrange(1, autocorr.shape[1]):
            factor = 8/2
            Hni = int((oss_sr * 60.0 * factor / (j+1)) + 0.5);
            #bpm = autocorr_bpms[i]
            if Hni < 4*defs.BPM_MAX and Hni > 40:
                amp = autocorr[i][j]
                if amp < 0:
                    amp = 0
                if prev_Hni == Hni:
                    sumamp += amp
                    count += 1
                else:
                    sumamp += amp
                    Hn[i][prev_Hni] += sumamp / float(count)
                    sumamp = 0.0
                    count = 1
                ### linear interpolate not-set bins
                if pprev_Hni - prev_Hni > 1:
                    x0 = prev_Hni
                    x1 = pprev_Hni
                    y0 = Hn[i][prev_Hni]
                    y1 = Hn[i][pprev_Hni]
                    for k in xrange(prev_Hni+1, pprev_Hni):
                        Hn[i][k] = y0 + (y1-y0)*(k-x0)/(x1-x0)
                    #print x0, x1, y0, y1, Hn[i][pprev_Hni-1]
                pprev_Hni = prev_Hni
                prev_Hni = Hni
    #numpy.savetxt('bh.txt', Hn[0])

    #for a in range(0, 20):
    #    numpy.savetxt("bh-combo-%i.txt" % a, Hn[a])

    #if plot:
    #    pylab.figure()
    #    Hn_bpms = numpy.arange( 4*defs.BPM_MAX) / 4.0
    #    pylab.plot(Hn_bpms, summed_beat_histograms)
    #    pylab.title("Beat histogram")

    ### time stretch, add
    harmonic_strengthened_bh = numpy.zeros( Hn.shape )
    for i in xrange( Hn.shape[0] ):
        ### unchecked direct translation of marsyas
        stretched = numpy.zeros( Hn.shape[1] )
        factor = 0.5
        numSamples = Hn.shape[1]
        for t in xrange( Hn.shape[1] ):
            ni = t*factor
            li = int(ni) % numSamples
            ri = li + 1
            w = ni - li
            if ri < numSamples:
                stretched[t] = Hn[i][li] + w * (Hn[i][ri] - Hn[i][li])
            else:
                stretched[t] = Hn[t]
        harmonic_strengthened_bh[i] = (
            Hn[i]
            + stretched
            )

        numpy.savetxt("foo-%i.txt" % i, harmonic_strengthened_bh[i])

    #for a in range(0, 20):
    #    numpy.savetxt("bh-combo-%i.txt" % a, harmonic_strengthened_bh[a])

    #if plot:
    #    Hn_bpms = numpy.arange( 4*defs.BPM_MAX) / 4.0
    #    pylab.plot(Hn_bpms, harmonic_strengthened_bh)

    ### pick top 8 candidates
    #peaks = []
    #for i in xrange( Hn.shape[0] ):
    #    these_peaks = find_peaks(harmonic_strengthened_bh[i],
    #        number=8, width=11)
    #    peaks.append(these_peaks)

    #summed = numpy.sum(harmonic_strengthened_bh, axis=0)
    #summed = numpy.sum(Hn, axis=0)

    if plot:
        pylab.figure()
        pylab.plot(numpy.arange(len(Hn))/4.0, Hn)


#    folded_hist = numpy.zeros(60*4)
#    for i in xrange(1, len(summed)-1):
#        bpm = i/4.0
#        j = i
#        while bpm < 15:
#            bpm *= 2
#            j *= 2
#        while bpm > 30:
#            bpm /= 2.0
#            j /= 2.0
#        #j = int(round(j))
#        j = int(j)
#        #print "%i\tto\t%i" % (i, j)
#        if j >= len(folded_hist):
#            continue
#        folded_hist [j] += summed[i]
#


    ### zzz confirmed up to here
    peaks = []
    for i in xrange( Hn.shape[0] ):
        these_peaks = find_peaks(harmonic_strengthened_bh[i],
            number=8, peak_neighbors=11)
        peaks.append(these_peaks / 4.0)
        #bpms = numpy.array(these_peaks)/4.0
    #    numpy.savetxt("bh-peaks-%i.txt" % i, bpms)


    #candidate_bpms = [ Hn_bpms[i] for i in peaks ]
    #print candidate_bpms
    #for p in peaks:
    #    print numpy.array(p)/4
    #if plot:
    #    pylab.figure()
    #    pylab.plot(numpy.arange(30*4, 60*4)/4.0, folded_hist[30*4:])
    #    pylab.show()
    return peaks

