/*
 * Copyright (C) 2012 Jamie Bullock
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 *
 */

#include "xtract/libxtract.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <malloc.h>
#include <sndfile.h>

#ifndef M_PI
#define M_PI 3.14159265358979323846264338327
#endif


#define BLOCKSIZE 1024
#define HALF_BLOCKSIZE BLOCKSIZE >> 1
#define SAMPLERATE 44100
#define PERIOD 102
#define MFCC_FREQ_BANDS 13
#define MFCC_FREQ_MIN 20
#define MFCC_FREQ_MAX 20000


//double wavetable[BLOCKSIZE];


long int powtwo(double n){
	long int ans=1;
	while(ans<n){
		ans *= 2;
	}
	return ans;
}

int main(int argc, char *argv[])
{

   printf("Wav Read Test\n");
   //if (argc != 2) {
     // fprintf(stderr, "Expecting wav file as argument\n");
     // return 1;
  // }
   // Open sound file
   SF_INFO sndInfo;
   
   SNDFILE *sndFile = sf_open(argv[1], SFM_READ, &sndInfo);

   if (sndFile == NULL) {
      fprintf(stderr, "Error reading source file '%s': %s\n", argv[1], sf_strerror(sndFile));
      return 1;
   }
   // Check format - 16bit PCM
   if (sndInfo.format != (SF_FORMAT_WAV | SF_FORMAT_PCM_16)) {
      fprintf(stderr, "Input should be 16bit Wav\n");
      sf_close(sndFile);
      return 1;
   }

   long int powerTwo = powtwo(sndInfo.frames);
   printf("\nHello there %d\n",powerTwo);
   // Allocate memory
   double *waveTable = malloc(sndInfo.channels * powerTwo * sizeof(double));   


   if (waveTable == NULL) {
      fprintf(stderr, "Could not allocate memory for data\n");
      sf_close(sndFile);
      return 1;
   }

   // Load data
   long numFrames_initial = sf_readf_double(sndFile, waveTable, sndInfo.channels*sndInfo.frames);
   long numFrames = powtwo(numFrames_initial);
   printf("\nHello there %d\n",numFrames);
   int i;
   for(i=0;i<sndInfo.frames;i+=10000){
	printf("Sample %d :\t%f \n",i,waveTable[i]);
   }
   for(i=sndInfo.frames;i<numFrames;i++){
	waveTable[i]=0;
   }

   /*// Check correct number of samples loaded
   if (numFrames != sndInfo.frames) {
      fprintf(stderr, "Did not read enough frames for source\n");
      sf_close(sndFile);
      free(wavetable);
      return 1;
   }*/
   // Output Info
   printf("Read %ld frames from %s, Sample rate: %d, Length: %fs\n",
      numFrames, argv[1], sndInfo.samplerate, (float)numFrames/sndInfo.samplerate);










    double mean = 0.0; 
    double specMean = 0.0; 
    double variance = 0.0;
    double zcr = 0.0;
    double specVariance = 0.0;
    double stdDeviation = 0.0;
    double specStdDeviation = 0.0;
    double avgDeviation = 0.0;
//    double specAvgDeviation = 0.0;
    double skewness = 0.0;
    double specSkewness = 0.0;
    double kurtosis = 0.0;
    double specKurtosis = 0.0;
    double tristimulus1 = 0.0;
    double tristimulus2 = 0.0;
    double tristimulus3 = 0.0;
    double spread = 0.0;
    double flatness = 0.0;
    double tonality = 0.0;
    double noisiness = 0.0;
    double rmsAmplitude = 0.0;
    double specInharmonicity = 0.0;
    double crest = 0.0;
    double power = 0.0;
    double oddEvenRatio = 0.0;
    double sharpness = 0.0;
    double specSlope = 0.0;
    double highestValue = 0.0;
    double sum = 0.0;
    double hps = 0.0;
    double NonZeroCount = 0.0;
    double f0 = 0.0;
    double midicents = 0.0;
    double flux = 0.0;
    double centroid = 0.0;
    double lowest = 0.0;
    double spectrum[BLOCKSIZE];// = {0};
    double windowed[BLOCKSIZE];// = {0};
    double peaks[BLOCKSIZE];// = {0};
//    printf("\nHello1\n");
    double harmonics[BLOCKSIZE];// = {0};
    double subframes[BLOCKSIZE];// = {0};
    double difference[BLOCKSIZE/2];// = {0};
    double autocorrelation=0.0;//[numFrames];// = {0};
    double autocorrelationFFT=0.0;//[numFrames];// = {0};
    double amdf[BLOCKSIZE];
    double bark[BLOCKSIZE/2];
    double barkCoeff[4]={0};
    double asdf[BLOCKSIZE];
    double dct[BLOCKSIZE];
    double wavetable[BLOCKSIZE]={0};
    double *window = NULL;
    double mfccs[MFCC_FREQ_BANDS] = {0};
    double argd[4] = {0};
    double samplerate = sndInfo.samplerate;
    int n;
    int rv = XTRACT_SUCCESS;
    xtract_mel_filter mel_filters;



   sf_close(sndFile);

    for(i=0;i<numFrames;i+=BLOCKSIZE){
    
    for(n=i;n<i+BLOCKSIZE;i++)
        wavetable[n]=waveTable[i];

    /* get the F0 */
    xtract[XTRACT_WAVELET_F0](wavetable, BLOCKSIZE, &samplerate, &f0);
    printf("\nF0: %f\n", f0);

    //* get the F0 as a MIDI note 
    xtract[XTRACT_MIDICENT](NULL, 0, &f0, &midicents);
    printf("\nMIDI cents: %f\n", midicents);

    //* get the mean of the input 
    xtract[XTRACT_MEAN](wavetable, BLOCKSIZE, NULL, &mean);
    printf("\nInput mean = %.5f\n", mean); //* We expect this to be zero for a square wave 

    //MY-VARIANCE
    xtract[XTRACT_VARIANCE](wavetable, BLOCKSIZE, &mean, &variance);
    printf("\nVariance = %f\n",variance);

    //MY-STANDARD DEVIATION
    xtract[XTRACT_STANDARD_DEVIATION](wavetable, BLOCKSIZE, &variance, &stdDeviation);
    printf("\nStandard Deviation = %f\n",stdDeviation);

    //MY-AVERAGE DEVIATION
    xtract[XTRACT_AVERAGE_DEVIATION](wavetable, BLOCKSIZE, &mean, &avgDeviation);
    printf("\nAverage Deviation = %f\n",avgDeviation);

    //MY-SKEWNESS
    argd[0] = mean;
    argd[1] = stdDeviation;

    xtract[XTRACT_SKEWNESS](wavetable, BLOCKSIZE, argd, &skewness);
    printf("\nSkewness = %f\n",skewness);

    //MY-KURTOSIS
    xtract[XTRACT_KURTOSIS](wavetable, BLOCKSIZE, argd, &kurtosis);
    printf("\nKurtosis = %f\n",kurtosis);

    //MY-ZERO CROSSING RATE
    xtract[XTRACT_ZCR](wavetable, BLOCKSIZE, NULL, &zcr);
    printf("\nZero Crossing Rate = %f\n",zcr);

    //MY-RMS AMPLITUDE
    xtract[XTRACT_RMS_AMPLITUDE](wavetable, BLOCKSIZE, NULL, &rmsAmplitude);
    printf("\nRMS Amplitude = %f\n",rmsAmplitude);

    //MY-HIGHEST VALUE
    xtract[XTRACT_HIGHEST_VALUE](wavetable, BLOCKSIZE, NULL, &highestValue);
    printf("\nHighest Value = %f\n",highestValue);

    //MY-SUM
    xtract[XTRACT_SUM](wavetable, BLOCKSIZE, NULL, &sum);
    printf("\nSum = %f\n", sum);

    //MY-CREST
    argd[0] = mean;
    argd[1] = highestValue;
    xtract[XTRACT_CREST](wavetable, BLOCKSIZE, argd, &crest);
    printf("\nCrest = %f\n", crest);

    //* get the lowest value in the input 
    argd[0] = -.5;
    rv = xtract[XTRACT_LOWEST_VALUE](wavetable, BLOCKSIZE, argd, &lowest);
    
    if (rv == XTRACT_SUCCESS)
    {
        printf("\nLowest value = %.6f\n\n", lowest);
    }
    else
    {
        printf("\nUnable to get lowest value, all values below threshold?\n\n");
    }

    //MY-AMDF
    xtract[XTRACT_AMDF](wavetable, BLOCKSIZE, NULL, amdf);
    for(n=0;n<BLOCKSIZE;n+=50)
	printf("\nAMDF[%d]: %f",n,amdf[n]);


    //MY-ASDF
    xtract[XTRACT_ASDF](wavetable, BLOCKSIZE, NULL, asdf);
    for(n=0;n<BLOCKSIZE;n+=50)
	printf("\nASDF[%d]: %f",n,asdf[n]);

    //MY-DCT
    xtract[XTRACT_DCT](wavetable, BLOCKSIZE, NULL, dct);
    for(n=0;n<BLOCKSIZE;n+=50)
	printf("\nDCT[%d]: %f",n,dct[n]);

    //* create the window function 
    window = xtract_init_window(BLOCKSIZE, XTRACT_HANN);
    xtract_windowed(wavetable, BLOCKSIZE, window, windowed);
    xtract_free_window(window);

    //* get the spectrum 
    argd[0] = SAMPLERATE / (double)BLOCKSIZE;
    argd[1] = XTRACT_MAGNITUDE_SPECTRUM;
    argd[2] = 0.f; //* DC component - we expect this to zero for square wave 
    argd[3] = 0.f; //* No Normalisation 

    xtract_init_fft(BLOCKSIZE, XTRACT_SPECTRUM);
    xtract[XTRACT_SPECTRUM](windowed, BLOCKSIZE, &argd[0], spectrum);
    xtract_free_fft();

    //MY_BARK
    xtract_init_bark(BLOCKSIZE,samplerate,barkCoeff);
    xtract[XTRACT_BARK_COEFFICIENTS](spectrum,BLOCKSIZE,barkCoeff,bark);
    for(n=0;n<BLOCKSIZE;n+=1000)
	printf("\nBARK[%d]: %f",n,bark[n]);


    //MY-SPECTRAL MEAN
    xtract[XTRACT_SPECTRAL_MEAN](spectrum, BLOCKSIZE, NULL, &specMean);
    printf("\nSpectral Mean: %f\n", BLOCKSIZE);

    //MY-SPECTRAL VARIANCE
    xtract[XTRACT_SPECTRAL_VARIANCE](spectrum, BLOCKSIZE, &specMean, &specVariance);
    printf("\nSpectral Variance: %f\n", specVariance);

    //MY-SPECTRAL STANDARD DEVIATION
    xtract[XTRACT_SPECTRAL_STANDARD_DEVIATION](spectrum, BLOCKSIZE, &specMean, &specStdDeviation);
    printf("\nSpectral Standard Deviation: %f\n", specStdDeviation);

    //xtract[XTRACT_SPECTRAL_AVERAGE_DEVIATION](spectrum, BLOCKSIZE, &specMean, &specAvgDeviation);
    //printf("\nSpectral Average Deviation: %f\n", specAvgDeviation);

    //MY-SPECTRAL SKEWNESS
    argd[0] = specMean;
    argd[1] = specStdDeviation;
    xtract[XTRACT_SPECTRAL_SKEWNESS](spectrum, BLOCKSIZE, argd, &specSkewness);
    printf("\nSpectral Skewness: %f\n", specSkewness);

    //MY-SPECTRAL KURTOSIS
    xtract[XTRACT_SPECTRAL_KURTOSIS](spectrum, BLOCKSIZE, argd, &specKurtosis);
    printf("\nSpectral Kurtosis: %f\n", specKurtosis);

    xtract[XTRACT_SPECTRAL_CENTROID](spectrum, BLOCKSIZE, NULL, &centroid);
    printf("\nSpectral Centroid: %f\n", centroid);

    //MY-POWER
    xtract[XTRACT_POWER](spectrum, BLOCKSIZE, NULL, &power);
    printf("\nPower = %f\n",power);

    //MY-SHARPNESS
    xtract[XTRACT_SHARPNESS](spectrum, numFrames, NULL, &sharpness);
    printf("\nSharpness = %f\n",sharpness);

    //MY-SPECTRAL SLOPE
    xtract[XTRACT_SPECTRAL_SLOPE](spectrum, BLOCKSIZE/2, NULL, &specSlope);
    printf("\nSpectral Slope = %f\n",specSlope);

    //MY-HPS
    xtract[XTRACT_HPS](spectrum, BLOCKSIZE, NULL, &hps);
    printf("\nHPS = %f\n",hps);

    //MY-FLATNESS
    xtract[XTRACT_FLATNESS](spectrum, BLOCKSIZE, NULL, &flatness);
    printf("\nFlatness: %f\n", flatness);

    //MY-TONALITY
    xtract[XTRACT_TONALITY](NULL, NULL, &flatness, &tonality);
    printf("\nTonality: %f\n", tonality);


    argd[0] = SAMPLERATE / (double)BLOCKSIZE;
    argd[1] = 10.0; //* peak threshold as %  of maximum peak 
    xtract[XTRACT_PEAK_SPECTRUM](spectrum, BLOCKSIZE / 2, argd, peaks);

    argd[0] = f0;
    argd[1] = .3; //* harmonic threshold 
    xtract[XTRACT_HARMONIC_SPECTRUM](peaks, BLOCKSIZE, argd, harmonics);

    //MY-ODD EVEN RATIO
    xtract[XTRACT_ODD_EVEN_RATIO](harmonics, BLOCKSIZE, NULL, &oddEvenRatio);
    printf("\nOdd Even Ratio : %f\n", oddEvenRatio);

    //MY-TRISTIMULUS-1
    xtract[XTRACT_TRISTIMULUS_1](harmonics, BLOCKSIZE, NULL, &tristimulus1);
    printf("\nTristimulus-1 : %f\n", tristimulus1);

    //MY-TRISTIMULUS-2
    xtract[XTRACT_TRISTIMULUS_2](harmonics, BLOCKSIZE, NULL, &tristimulus2);
    printf("\nTristimulus-2 : %f\n", tristimulus2);

    //MY-TRISTIMULUS-2
    xtract[XTRACT_TRISTIMULUS_3](harmonics, BLOCKSIZE, NULL, &tristimulus3);
    printf("\nTristimulus-3 : %f\n", tristimulus3);

    //MY-NOISINESS
    xtract[XTRACT_NOISINESS](NULL, NULL, harmonics, &tristimulus1);
    printf("\nNoisiness : %f\n", noisiness);
    
    //MY-SPECTRAL INHARMONICITY
//    xtract[XTRACT_SPECTRAL_INHARMONICITY](peaks, BLOCKSIZE, &f0, &specInharmonicity);
//    printf("\nSpectral Inharmonicity : %f\n", specInharmonicity);

    //MY-SPERAD
//    xtract[XTRACT_SPREAD](spectrum, BLOCKSIZE, NULL, &spread);
//    printf("\nSpread : %f\n", spread);

    //MY-AUTOCORRELATION and AUTOCORRELATION FFT
//    xtract[XTRACT_AUTOCORRELATION](wavetable, BLOCKSIZE, NULL, &autocorrelation);
//    printf("\nAutocorrelation : %f\n", autocorrelation);

    //xtract[XTRACT_AUTOCORRELATION_FFT](wavetable, BLOCKSIZE, NULL, &autocorrelationFFT);
    //printf("\nAutocorrelation fft : %f\n",autocorrelationFFT);

    //* print the spectral bins
    printf("\nSpectrum:\n");
    for(n = 0; n < (BLOCKSIZE >> 1); n+=1000)
    {
        printf("freq: %.1f\tamp: %.6f", spectrum[n + (BLOCKSIZE >> 1)], spectrum[n]);
        if (peaks[n + (BLOCKSIZE >> 1)] != 0.f)
        {
            printf("\tpeak:: freq: %.1f\tamp: %.6f\n", peaks[n + (BLOCKSIZE >> 1)], peaks[n]);
        }
        else
        {
            printf("\n");
        }
    }
    printf("\n");

    //* compute the MFCCs 
    mel_filters.n_filters = MFCC_FREQ_BANDS;
    mel_filters.filters   = (double **)malloc(MFCC_FREQ_BANDS * sizeof(double *));
    for(n = 0; n < MFCC_FREQ_BANDS; ++n)
    {
        mel_filters.filters[n] = (double *)malloc(BLOCKSIZE * sizeof(double));
    }

    xtract_init_mfcc(BLOCKSIZE >> 1, SAMPLERATE >> 1, XTRACT_EQUAL_GAIN, MFCC_FREQ_MIN, MFCC_FREQ_MAX, mel_filters.n_filters, mel_filters.filters);
    xtract_mfcc(spectrum, BLOCKSIZE >> 1, &mel_filters, mfccs);

    //* print the MFCCs 
    printf("MFCCs:\n");
    for(n = 0; n < MFCC_FREQ_BANDS; ++n)
    {
        printf("band: %d\t", n);
        if(n < 10) {
            printf("\t");
        }
        printf("coeff: %f\n", mfccs[n]);
    }

    //* compute Spectral Flux 
    argd[0] = SAMPLERATE / (BLOCKSIZE/2);
    argd[1] = XTRACT_MAGNITUDE_SPECTRUM;
    argd[2] = 0.f; //* DC component 
    argd[3] = 0.f; //* No Normalisation 
    
    xtract_init_fft(BLOCKSIZE/2, XTRACT_SPECTRUM);
    xtract_features_from_subframes(wavetable, BLOCKSIZE, XTRACT_SPECTRUM, argd, subframes);
    xtract_difference_vector(subframes, BLOCKSIZE, NULL, difference);
    
    argd[0] = 1.0; //* norm order 
    argd[1] = XTRACT_POSITIVE_SLOPE; //* positive slope 
    
    xtract_flux(difference, BLOCKSIZE/2, argd, &flux);
    
    printf("Flux: %f\n", flux);
}
    // cleanup 
    for(n = 0; n < MFCC_FREQ_BANDS; ++n)
    {
        free(mel_filters.filters[n]);
    }
    free(mel_filters.filters);

    return 0;

}
