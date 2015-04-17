# MarSystemComposite
# Type = Series
# Name = bextractNetwork

# MarControls = 25
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/currentCollectionNewFile = 0
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/Fanout/fanout/SoundFileSource/src/mrs_bool/currentCollectionNewFile
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/hasData = 0
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/Fanout/fanout/SoundFileSource/src/mrs_bool/hasData
# LinkedFrom = 0
# mrs_bool/initAudio = 0
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/Series/featureNetwork/AudioSink/dest/mrs_bool/initAudio
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/nLabels = 2
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/Fanout/fanout/SoundFileSource/src/mrs_natural/nLabels
# LinkedFrom = 0
# mrs_natural/onObservations = 4
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/pos = 661500
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/Fanout/fanout/SoundFileSource/src/mrs_natural/pos
# LinkedFrom = 0
# mrs_real/currentLabel = 1
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/Fanout/fanout/SoundFileSource/src/mrs_real/currentLabel
# LinkedFrom = 1
# /Series/bextractNetwork/Annotator/annotator/mrs_real/label
# mrs_real/duration = -1
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/Fanout/fanout/SoundFileSource/src/mrs_real/duration
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 4


# type: matrix
# rows: 4
# columns: 1
0
0
0
0

# Size = 4
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/currentlyPlaying = ../audio/music_speech/speech_wav/chant.wav
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/Fanout/fanout/SoundFileSource/src/mrs_string/currentlyPlaying
# LinkedFrom = 0
# mrs_string/filename = bextract_single.mf
# LinksTo = 0
# LinkedFrom = 2
# /Series/bextractNetwork/Series/featureNetwork/Fanout/fanout/SoundFileSource/src/mrs_string/filename
# /Series/bextractNetwork/Confidence/confidence/mrs_string/fileName
# mrs_string/inObsNames = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/labelNames = music,speech,
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/Fanout/fanout/SoundFileSource/src/mrs_string/labelNames
# LinkedFrom = 0
# mrs_string/onObsNames = ,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 4

# MarSystemComposite
# Type = Series
# Name = featureNetwork

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 62
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 44100
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 62


# type: matrix
# rows: 62
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 62
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Mean_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 5

# MarSystemComposite
# Type = Fanout
# Name = fanout

# MarControls = 21
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/disable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/enable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 44100
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/enabled = # MARSYAS mrs_realvec
# Size = 2


# type: matrix
# rows: 1
# columns: 2
1 0

# Size = 2
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/muted = # MARSYAS mrs_realvec
# Size = 2


# type: matrix
# rows: 1
# columns: 2
0 0

# Size = 2
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 512


# type: matrix
# rows: 1
# columns: 512
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 512
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/disableChild = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/enableChild = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = AudioCh0,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 2

# MarSystem
# Type = SoundFileSource
# Name = src

# MarControls = 43
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/currentCollectionNewFile = 0
# LinksTo = 0
# LinkedFrom = 3
# /Series/bextractNetwork/mrs_bool/currentCollectionNewFile
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/Series/spectralShape/STFT_features/spectrumFeatures/Flux/flux/mrs_bool/reset
# /Series/bextractNetwork/Series/featureNetwork/TextureStats/tStats/mrs_bool/reset
# mrs_bool/currentHasData = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/currentLastTickWithData = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/hasData = 0
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/mrs_bool/hasData
# mrs_bool/lastTickWithData = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/noteon = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/regression = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/shuffle = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/startStable = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/advance = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/cindex = 127
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/loopPos = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/moveToSamplePos = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/nLabels = 2
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/mrs_natural/nLabels
# mrs_natural/numFiles = 128
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/pos = 661500
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/mrs_natural/pos
# mrs_natural/size = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/currentLabel = 1
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/mrs_real/currentLabel
# mrs_real/duration = -1
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/mrs_real/duration
# mrs_real/frequency = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/fullDuration = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 44100
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/previousLabel = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/repetitions = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 512


# type: matrix
# rows: 1
# columns: 512
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 512
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/allfilenames = ../audio/music_speech/music_wav/opera.wav,../audio/music_speech/music_wav/cure.wav,../audio/music_speech/music_wav/winds.wav,../audio/music_speech/music_wav/brahms.wav,../audio/music_speech/music_wav/misirlou.wav,../audio/music_speech/music_wav/classical2.wav,../audio/music_speech/music_wav/bigband.wav,../audio/music_speech/music_wav/hendrix.wav,../audio/music_speech/music_wav/echoes.wav,../audio/music_speech/music_wav/corea1.wav,../audio/music_speech/music_wav/jazz.wav,../audio/music_speech/music_wav/madradeus.wav,../audio/music_speech/music_wav/gravity.wav,../audio/music_speech/music_wav/rock.wav,../audio/music_speech/music_wav/bagpipe.wav,../audio/music_speech/music_wav/u2.wav,../audio/music_speech/music_wav/gravity2.wav,../audio/music_speech/music_wav/mingus1.wav,../audio/music_speech/music_wav/beatles.wav,../audio/music_speech/music_wav/blues.wav,../audio/music_speech/music_wav/loreena.wav,../audio/music_speech/music_wav/prodigy.wav,../audio/music_speech/music_wav/russo.wav,../audio/music_speech/music_wav/birdland.wav,../audio/music_speech/music_wav/canonaki.wav,../audio/music_speech/music_wav/ipanema.wav,../audio/music_speech/music_wav/narch.wav,../audio/music_speech/music_wav/rock2.wav,../audio/music_speech/music_wav/jazz1.wav,../audio/music_speech/music_wav/copland2.wav,../audio/music_speech/music_wav/corea.wav,../audio/music_speech/music_wav/copland.wav,../audio/music_speech/music_wav/led.wav,../audio/music_speech/music_wav/marlene.wav,../audio/music_speech/music_wav/deedee.wav,../audio/music_speech/music_wav/bmarsalis.wav,../audio/music_speech/music_wav/nearhou.wav,../audio/music_speech/music_wav/magkas.wav,../audio/music_speech/music_wav/tony.wav,../audio/music_speech/music_wav/caravan.wav,../audio/music_speech/music_wav/guitar.wav,../audio/music_speech/music_wav/ncherry.wav,../audio/music_speech/music_wav/classical1.wav,../audio/music_speech/music_wav/unpoco.wav,../audio/music_speech/music_wav/deedee1.wav,../audio/music_speech/music_wav/moanin.wav,../audio/music_speech/music_wav/mingus.wav,../audio/music_speech/music_wav/gismonti.wav,../audio/music_speech/music_wav/pop.wav,../audio/music_speech/music_wav/glass.wav,../audio/music_speech/music_wav/classical.wav,../audio/music_speech/music_wav/duke.wav,../audio/music_speech/music_wav/opera1.wav,../audio/music_speech/music_wav/glass1.wav,../audio/music_speech/music_wav/beat.wav,../audio/music_speech/music_wav/georose.wav,../audio/music_speech/music_wav/march.wav,../audio/music_speech/music_wav/debussy.wav,../audio/music_speech/music_wav/bartok.wav,../audio/music_speech/music_wav/ballad.wav,../audio/music_speech/music_wav/redhot.wav,../audio/music_speech/music_wav/vlobos.wav,../audio/music_speech/music_wav/chaka.wav,../audio/music_speech/music_wav/eguitar.wav,../audio/music_speech/speech_wav/voice.wav,../audio/music_speech/speech_wav/ellhnika.wav,../audio/music_speech/speech_wav/shannon.wav,../audio/music_speech/speech_wav/pulp.wav,../audio/music_speech/speech_wav/dialogue2.wav,../audio/music_speech/speech_wav/china.wav,../audio/music_speech/speech_wav/psychic.wav,../audio/music_speech/speech_wav/undergrad.wav,../audio/music_speech/speech_wav/conversion.wav,../audio/music_speech/speech_wav/austria.wav,../audio/music_speech/speech_wav/smoke1.wav,../audio/music_speech/speech_wav/acomic2.wav,../audio/music_speech/speech_wav/voices.wav,../audio/music_speech/speech_wav/greek.wav,../audio/music_speech/speech_wav/serbian.wav,../audio/music_speech/speech_wav/charles.wav,../audio/music_speech/speech_wav/jony.wav,../audio/music_speech/speech_wav/jvoice.wav,../audio/music_speech/speech_wav/news2.wav,../audio/music_speech/speech_wav/diamond.wav,../audio/music_speech/speech_wav/georg.wav,../audio/music_speech/speech_wav/sleep.wav,../audio/music_speech/speech_wav/dialogue.wav,../audio/music_speech/speech_wav/comedy.wav,../audio/music_speech/speech_wav/lena.wav,../audio/music_speech/speech_wav/amal.wav,../audio/music_speech/speech_wav/geography.wav,../audio/music_speech/speech_wav/acomic.wav,../audio/music_speech/speech_wav/thlui.wav,../audio/music_speech/speech_wav/danie.wav,../audio/music_speech/speech_wav/kid.wav,../audio/music_speech/speech_wav/india.wav,../audio/music_speech/speech_wav/pulp1.wav,../audio/music_speech/speech_wav/god.wav,../audio/music_speech/speech_wav/greek1.wav,../audio/music_speech/speech_wav/allison.wav,../audio/music_speech/speech_wav/teachers.wav,../audio/music_speech/speech_wav/teachers2.wav,../audio/music_speech/speech_wav/news1.wav,../audio/music_speech/speech_wav/smoking.wav,../audio/music_speech/speech_wav/kedar.wav,../audio/music_speech/speech_wav/emil.wav,../audio/music_speech/speech_wav/vegetables2.wav,../audio/music_speech/speech_wav/female.wav,../audio/music_speech/speech_wav/oneday.wav,../audio/music_speech/speech_wav/stupid.wav,../audio/music_speech/speech_wav/danie1.wav,../audio/music_speech/speech_wav/bathroom1.wav,../audio/music_speech/speech_wav/nj105a.wav,../audio/music_speech/speech_wav/relation.wav,../audio/music_speech/speech_wav/geography1.wav,../audio/music_speech/speech_wav/vegetables1.wav,../audio/music_speech/speech_wav/nj105.wav,../audio/music_speech/speech_wav/fire.wav,../audio/music_speech/speech_wav/fem_rock.wav,../audio/music_speech/speech_wav/my_voice.wav,../audio/music_speech/speech_wav/comedy1.wav,../audio/music_speech/speech_wav/vegetables.wav,../audio/music_speech/speech_wav/dialogue1.wav,../audio/music_speech/speech_wav/teachers1.wav,../audio/music_speech/speech_wav/pulp2.wav,../audio/music_speech/speech_wav/male.wav,../audio/music_speech/speech_wav/nether.wav,../audio/music_speech/speech_wav/chant.wav,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/currentlyPlaying = ../audio/music_speech/speech_wav/chant.wav
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/mrs_string/currentlyPlaying
# mrs_string/filename = bextract_single.mf
# LinksTo = 1
# /Series/bextractNetwork/mrs_string/filename
# LinkedFrom = 0
# mrs_string/inObsNames = audio,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/labelNames = music,speech,
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/mrs_string/labelNames
# mrs_string/onObsNames = AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/previouslyPlaying = ../audio/music_speech/speech_wav/nether.wav
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = AudioSource
# Name = mic

# MarControls = 20
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/hasData = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/initAudio = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/bufferSize = 256
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/nChannels = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/gain = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 44100
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 44100
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 512


# type: matrix
# rows: 1
# columns: 512
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 512
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = audio,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = ,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = AudioSink
# Name = dest

# MarControls = 18
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/initAudio = 0
# LinksTo = 1
# /Series/bextractNetwork/mrs_bool/initAudio
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/bufferSize = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/device = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 512


# type: matrix
# rows: 1
# columns: 512
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 512
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = Stereo2Mono
# Name = m2s

# MarControls = 18
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/stereo = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/weight = 0.5
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 512


# type: matrix
# rows: 1
# columns: 512
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 512
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/mode = orig
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystemComposite
# Type = TimbreFeatures
# Name = featExtractor

# MarControls = 28
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/disable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/enable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 31
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/winSize = 512
# LinksTo = 0
# LinkedFrom = 3
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/Series/timeDomain/ShiftInput/si/mrs_natural/winSize
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/Series/spectralShape/ShiftInput/si/mrs_natural/winSize
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/Series/lpcFeatures/ShiftInput/si/mrs_natural/winSize
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/enabled = # MARSYAS mrs_realvec
# Size = 3


# type: matrix
# rows: 1
# columns: 3
1 1 1

# Size = 3
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/muted = # MARSYAS mrs_realvec
# Size = 3


# type: matrix
# rows: 1
# columns: 3
0 0 0

# Size = 3
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 31


# type: matrix
# rows: 31
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 31
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/disableChild = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/disableLPCChild = ,
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/Series/lpcFeatures/Fanout/lpcf/mrs_string/disableChild
# mrs_string/disableSPChild = ,
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/Series/spectralShape/STFT_features/spectrumFeatures/mrs_string/disableChild
# mrs_string/disableTDChild = ,
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/Series/timeDomain/Fanout/tdf/mrs_string/disableChild
# mrs_string/enableChild = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/enableLPCChild = ,
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/Series/lpcFeatures/Fanout/lpcf/mrs_string/enableChild
# mrs_string/enableSPChild = ,
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/Series/spectralShape/STFT_features/spectrumFeatures/mrs_string/enableChild
# mrs_string/enableTDChild = ,
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/Series/timeDomain/Fanout/tdf/mrs_string/enableChild
# mrs_string/inObsNames = Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 3

# MarSystemComposite
# Type = Series
# Name = timeDomain

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 1


# type: matrix
# rows: 1
# columns: 1
0

# Size = 1
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 2

# MarSystem
# Type = ShiftInput
# Name = si

# MarControls = 20
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/clean = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/reset = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/winSize = 512
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/mrs_natural/winSize
# LinkedFrom = 0
# mrs_real/highCleanLimit = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/lowCleanLimit = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 512


# type: matrix
# rows: 1
# columns: 512
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 512
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystemComposite
# Type = Fanout
# Name = tdf

# MarControls = 21
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/disable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/enable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/enabled = # MARSYAS mrs_realvec
# Size = 1


# type: matrix
# rows: 1
# columns: 1
1

# Size = 1
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/muted = # MARSYAS mrs_realvec
# Size = 1


# type: matrix
# rows: 1
# columns: 1
0

# Size = 1
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 1


# type: matrix
# rows: 1
# columns: 1
0

# Size = 1
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/disableChild = ,
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/mrs_string/disableTDChild
# LinkedFrom = 0
# mrs_string/enableChild = ,
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/mrs_string/enableTDChild
# LinkedFrom = 0
# mrs_string/inObsNames = HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 1

# MarSystem
# Type = ZeroCrossings
# Name = zcrs

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 1


# type: matrix
# rows: 1
# columns: 1
0

# Size = 1
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystemComposite
# Type = Series
# Name = spectralShape

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 30
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 30


# type: matrix
# rows: 30
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 30
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 4

# MarSystem
# Type = ShiftInput
# Name = si

# MarControls = 20
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/clean = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/reset = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/winSize = 512
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/mrs_natural/winSize
# LinkedFrom = 0
# mrs_real/highCleanLimit = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/lowCleanLimit = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 512


# type: matrix
# rows: 1
# columns: 512
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 512
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = Windowing
# Name = hamming

# MarControls = 21
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/normalize = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/zeroPhasing = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/size = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/zeroPadding = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/variance = 0.4
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 512


# type: matrix
# rows: 1
# columns: 512
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 512
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/type = Hamming
# LinksTo = 0
# LinkedFrom = 0
# MarSystemComposite
# Type = PowerSpectrumNet1
# Name = powerSpect1

# MarControls = 16
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 257
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/cutoff = 1
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/Series/spectralShape/PowerSpectrumNet1/powerSpect1/Spectrum/spk/mrs_real/cutoff
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 257


# type: matrix
# rows: 257
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 257
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 2

# MarSystem
# Type = Spectrum
# Name = spk

# MarControls = 17
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/cutoff = 1
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/Series/spectralShape/PowerSpectrumNet1/powerSpect1/mrs_real/cutoff
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/lowcutoff = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 512


# type: matrix
# rows: 512
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 512
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = FFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = PowerSpectrum
# Name = pspk

# MarControls = 16
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 257
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 257


# type: matrix
# rows: 257
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 257
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = FFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/spectrumType = power
# LinksTo = 0
# LinkedFrom = 0
# MarSystemComposite
# Type = STFT_features
# Name = spectrumFeatures

# MarControls = 21
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/disable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/enable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 257
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 30
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/enabled = # MARSYAS mrs_realvec
# Size = 7


# type: matrix
# rows: 1
# columns: 7
1 1 1 1 1 0 0

# Size = 7
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/muted = # MARSYAS mrs_realvec
# Size = 7


# type: matrix
# rows: 1
# columns: 7
0 0 0 0 0 0 0

# Size = 7
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 30


# type: matrix
# rows: 30
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 30
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/disableChild = ,
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/mrs_string/disableSPChild
# LinkedFrom = 0
# mrs_string/enableChild = ,
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/mrs_string/enableSPChild
# LinkedFrom = 0
# mrs_string/inObsNames = Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 7

# MarSystem
# Type = Centroid
# Name = cntrd

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 257
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 1


# type: matrix
# rows: 1
# columns: 1
0

# Size = 1
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = Rolloff
# Name = rlf

# MarControls = 16
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 257
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/percentage = 0.9
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 1


# type: matrix
# rows: 1
# columns: 1
0

# Size = 1
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = Flux
# Name = flux

# MarControls = 17
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/reset = 0
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/Fanout/fanout/SoundFileSource/src/mrs_bool/currentCollectionNewFile
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 257
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 1


# type: matrix
# rows: 1
# columns: 1
0

# Size = 1
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/mode = marsyas
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = MFCC
# Name = mfcc

# MarControls = 16
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/coefficients = 13
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 257
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 13
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 13


# type: matrix
# rows: 13
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 13
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystemComposite
# Type = Series
# Name = chromaPrSeries

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 257
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 14
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 14


# type: matrix
# rows: 14
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 14
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 2

# MarSystem
# Type = Spectrum2Chroma
# Name = chroma

# MarControls = 19
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 257
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/nbins = 12
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 12
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/middleAfreq = 440
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/weightCenterFreq = 5.18442
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/weightStdDev = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 12


# type: matrix
# rows: 12
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 12
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = PeakRatio
# Name = pr

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 12
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 14
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 14


# type: matrix
# rows: 14
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 14
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = SCF
# Name = scf

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 257
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 24
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 24


# type: matrix
# rows: 24
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 24
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh01,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh02,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh03,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh04,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh05,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh06,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh07,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh08,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh09,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh010,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh011,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh012,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh013,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh014,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh015,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh016,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh017,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh018,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh019,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh020,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh021,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh022,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh023,SCF_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh024,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = SFM
# Name = sfm

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 257
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 24
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 24


# type: matrix
# rows: 24
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 24
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh01,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh02,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh03,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh04,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh05,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh06,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh07,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh08,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh09,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh010,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh011,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh012,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh013,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh014,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh015,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh016,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh017,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh018,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh019,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh020,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh021,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh022,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh023,SFM_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh024,
# LinksTo = 0
# LinkedFrom = 0
# MarSystemComposite
# Type = Series
# Name = lpcFeatures

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 0
# columns: 1


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = MARSYAS_EMPTYSTRING
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 4

# MarSystem
# Type = Filter
# Name = preEmph

# MarControls = 20
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/stateUpdate = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/fgain = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/dcoeffs = # MARSYAS mrs_realvec
# Size = 1


# type: matrix
# rows: 1
# columns: 1
1

# Size = 1
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/ncoeffs = # MARSYAS mrs_realvec
# Size = 2


# type: matrix
# rows: 1
# columns: 2
1 -0.97

# Size = 2
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 512


# type: matrix
# rows: 1
# columns: 512
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 512
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/state = # MARSYAS mrs_realvec
# Size = 1


# type: matrix
# rows: 1
# columns: 1
0

# Size = 1
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Filter_Sum_AudioCh0,,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = ShiftInput
# Name = si

# MarControls = 20
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/clean = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/reset = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/winSize = 512
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/mrs_natural/winSize
# LinkedFrom = 0
# mrs_real/highCleanLimit = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/lowCleanLimit = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 512


# type: matrix
# rows: 1
# columns: 512
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 512
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Filter_Sum_AudioCh0,,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = HopSize512_WinSize512_Filter_Sum_AudioCh0,HopSize512_WinSize512_,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = Windowing
# Name = ham

# MarControls = 21
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/normalize = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/zeroPhasing = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/size = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/zeroPadding = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/variance = 0.4
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 512


# type: matrix
# rows: 1
# columns: 512
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 512
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = HopSize512_WinSize512_Filter_Sum_AudioCh0,HopSize512_WinSize512_,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = WinHamming_HopSize512_WinSize512_Filter_Sum_AudioCh0,WinHamming_HopSize512_WinSize512_,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/type = Hamming
# LinksTo = 0
# LinkedFrom = 0
# MarSystemComposite
# Type = Fanout
# Name = lpcf

# MarControls = 21
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/disable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/enable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/enabled = # MARSYAS mrs_realvec
# Size = 2


# type: matrix
# rows: 1
# columns: 2
0 0

# Size = 2
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/muted = # MARSYAS mrs_realvec
# Size = 2


# type: matrix
# rows: 1
# columns: 2
0 0

# Size = 2
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 0
# columns: 1


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/disableChild = ,
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/mrs_string/disableLPCChild
# LinkedFrom = 0
# mrs_string/enableChild = ,
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/TimbreFeatures/featExtractor/mrs_string/enableLPCChild
# LinkedFrom = 0
# mrs_string/inObsNames = WinHamming_HopSize512_WinSize512_Filter_Sum_AudioCh0,WinHamming_HopSize512_WinSize512_,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = MARSYAS_EMPTYSTRING
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 2

# MarSystemComposite
# Type = Series
# Name = lspbranch

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 18
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 18


# type: matrix
# rows: 18
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 18
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = WinHamming_HopSize512_WinSize512_Filter_Sum_AudioCh0,WinHamming_HopSize512_WinSize512_,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = LSP_1,LSP_2,LSP_3,LSP_4,LSP_5,LSP_6,LSP_7,LSP_8,LSP_9,LSP_10,LSP_11,LSP_12,LSP_13,LSP_14,LSP_15,LSP_16,LSP_17,LSP_18,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 2

# MarSystem
# Type = LPC
# Name = lpc

# MarControls = 21
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 20
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/order = 18
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/gamma = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/lambda = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/pitch = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/power = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/coeffs = # MARSYAS mrs_realvec
# Size = 19


# type: matrix
# rows: 1
# columns: 19
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 19
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 20


# type: matrix
# rows: 20
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 20
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = WinHamming_HopSize512_WinSize512_Filter_Sum_AudioCh0,WinHamming_HopSize512_WinSize512_,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = LPC_1,LPC_2,LPC_3,LPC_4,LPC_5,LPC_6,LPC_7,LPC_8,LPC_9,LPC_10,LPC_11,LPC_12,LPC_13,LPC_14,LPC_15,LPC_16,LPC_17,LPC_18,LPC_Pitch,LPC_Gain,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = LSP
# Name = lsp

# MarControls = 17
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 20
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 18
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/order = 18
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/gamma = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 18


# type: matrix
# rows: 18
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 18
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = LPC_1,LPC_2,LPC_3,LPC_4,LPC_5,LPC_6,LPC_7,LPC_8,LPC_9,LPC_10,LPC_11,LPC_12,LPC_13,LPC_14,LPC_15,LPC_16,LPC_17,LPC_18,LPC_Pitch,LPC_Gain,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = LSP_1,LSP_2,LSP_3,LSP_4,LSP_5,LSP_6,LSP_7,LSP_8,LSP_9,LSP_10,LSP_11,LSP_12,LSP_13,LSP_14,LSP_15,LSP_16,LSP_17,LSP_18,
# LinksTo = 0
# LinkedFrom = 0
# MarSystemComposite
# Type = Series
# Name = lpccbranch

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 12
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 12


# type: matrix
# rows: 12
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 12
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = WinHamming_HopSize512_WinSize512_Filter_Sum_AudioCh0,WinHamming_HopSize512_WinSize512_,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = LPCC_1,LPCC_2,LPCC_3,LPCC_4,LPCC_5,LPCC_6,LPCC_7,LPCC_8,LPCC_9,LPCC_10,LPCC_11,LPCC_12,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 2

# MarSystem
# Type = LPC
# Name = lpc

# MarControls = 21
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 14
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/order = 12
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/gamma = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/lambda = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/pitch = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/power = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/coeffs = # MARSYAS mrs_realvec
# Size = 13


# type: matrix
# rows: 1
# columns: 13
0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 13
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 14


# type: matrix
# rows: 14
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 14
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = WinHamming_HopSize512_WinSize512_Filter_Sum_AudioCh0,WinHamming_HopSize512_WinSize512_,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = LPC_1,LPC_2,LPC_3,LPC_4,LPC_5,LPC_6,LPC_7,LPC_8,LPC_9,LPC_10,LPC_11,LPC_12,LPC_Pitch,LPC_Gain,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = LPCC
# Name = lpcc

# MarControls = 16
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 14
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 12
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/order = 12
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 12


# type: matrix
# rows: 12
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 12
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = LPC_1,LPC_2,LPC_3,LPC_4,LPC_5,LPC_6,LPC_7,LPC_8,LPC_9,LPC_10,LPC_11,LPC_12,LPC_Pitch,LPC_Gain,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = LPCC_1,LPCC_2,LPCC_3,LPCC_4,LPCC_5,LPCC_6,LPCC_7,LPCC_8,LPCC_9,LPCC_10,LPCC_11,LPCC_12,
# LinksTo = 0
# LinkedFrom = 0
# MarSystemComposite
# Type = TextureStats
# Name = tStats

# MarControls = 17
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/reset = 0
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/Fanout/fanout/SoundFileSource/src/mrs_bool/currentCollectionNewFile
# LinkedFrom = 1
# /Series/bextractNetwork/Series/featureNetwork/TextureStats/tStats/Memory/mempr/mrs_bool/reset
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 31
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/memSize = 20
# LinksTo = 0
# LinkedFrom = 1
# /Series/bextractNetwork/Series/featureNetwork/TextureStats/tStats/Memory/mempr/mrs_natural/memSize
# mrs_natural/onObservations = 62
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 62


# type: matrix
# rows: 62
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 62
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Mean_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 2

# MarSystem
# Type = Memory
# Name = mempr

# MarControls = 17
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/reset = 0
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/TextureStats/tStats/mrs_bool/reset
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 31
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/memSize = 20
# LinksTo = 1
# /Series/bextractNetwork/Series/featureNetwork/TextureStats/tStats/mrs_natural/memSize
# LinkedFrom = 0
# mrs_natural/onObservations = 31
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 20
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 620


# type: matrix
# rows: 31
# columns: 20
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

# Size = 620
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystemComposite
# Type = Fanout
# Name = meanstdpr

# MarControls = 21
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/disable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/enable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 31
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 20
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 62
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/enabled = # MARSYAS mrs_realvec
# Size = 2


# type: matrix
# rows: 1
# columns: 2
1 1

# Size = 2
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/muted = # MARSYAS mrs_realvec
# Size = 2


# type: matrix
# rows: 1
# columns: 2
0 0

# Size = 2
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 62


# type: matrix
# rows: 62
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 62
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/disableChild = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/enableChild = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Mean_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 2

# MarSystem
# Type = Mean
# Name = meanpr

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 31
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 20
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 31
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 31


# type: matrix
# rows: 31
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 31
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Mean_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = StandardDeviation
# Name = stdpr

# MarControls = 15
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 31
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 20
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 31
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 31


# type: matrix
# rows: 31
# columns: 1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

# Size = 31
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Std_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = Annotator
# Name = annotator

# MarControls = 18
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/labelInFront = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 62
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 63
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/label = 1
# LinksTo = 1
# /Series/bextractNetwork/mrs_real/currentLabel
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 63


# type: matrix
# rows: 63
# columns: 1
0.0957031
0.0670842
0.162062
0.0841134
-55.1502
5.99481
-3.35721
2.25075
0.706802
-0.366798
0.488115
-0.659075
-0.23747
-0.349465
-0.523155
-0.139176
-0.648289
6.90465e-05
4.42506e-05
2.68421e-05
2.51381e-05
3.34509e-05
3.92391e-05
3.55287e-05
3.74728e-05
4.73006e-05
5.98566e-05
7.54376e-05
7.62306e-05
1.76386
5.66815
0.0222176
0.0303444
0.0511385
0.0285586
5.44056
1.1564
0.600749
0.93291
1.12372
0.915754
1.44995
0.482035
0.740344
0.615429
0.422873
0.421062
0.328304
0.000106482
5.83759e-05
2.56763e-05
2.60954e-05
3.96877e-05
5.14036e-05
4.19674e-05
4.36814e-05
6.46278e-05
6.77885e-05
9.35704e-05
0.000107771
0.651045
7.74522
1

# Size = 63
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/annotationName = annotation
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Mean_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = Mean_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,,annotation
# LinksTo = 0
# LinkedFrom = 0
# MarSystemComposite
# Type = Classifier
# Name = cl

# MarControls = 24
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/disable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/enable = -1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 63
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/nClasses = 2
# LinksTo = 0
# LinkedFrom = 3
# /Series/bextractNetwork/Classifier/cl/ZeroRClassifier/zerorcl/mrs_natural/nClasses
# /Series/bextractNetwork/Classifier/cl/GaussianClassifier/gaussiancl/mrs_natural/nClasses
# /Series/bextractNetwork/Classifier/cl/SVMClassifier/svmcl/mrs_natural/nClasses
# mrs_natural/onObservations = 4
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/classProbabilities = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 3
# /Series/bextractNetwork/Classifier/cl/ZeroRClassifier/zerorcl/mrs_realvec/classProbabilities
# /Series/bextractNetwork/Classifier/cl/GaussianClassifier/gaussiancl/mrs_realvec/classProbabilities
# /Series/bextractNetwork/Classifier/cl/SVMClassifier/svmcl/mrs_realvec/classProbabilities
# mrs_realvec/enabled = # MARSYAS mrs_realvec
# Size = 3


# type: matrix
# rows: 1
# columns: 3
0 1 0

# Size = 3
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/muted = # MARSYAS mrs_realvec
# Size = 3


# type: matrix
# rows: 1
# columns: 3
0 0 0

# Size = 3
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 4


# type: matrix
# rows: 4
# columns: 1
0
0
0
0

# Size = 4
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/disableChild = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/enableChild = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Mean_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,,annotation
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/mode = predict
# LinksTo = 0
# LinkedFrom = 3
# /Series/bextractNetwork/Classifier/cl/ZeroRClassifier/zerorcl/mrs_string/mode
# /Series/bextractNetwork/Classifier/cl/GaussianClassifier/gaussiancl/mrs_string/mode
# /Series/bextractNetwork/Classifier/cl/SVMClassifier/svmcl/mrs_string/mode
# mrs_string/onObsNames = ,
# LinksTo = 0
# LinkedFrom = 0

# nComponents = 3

# MarSystem
# Type = ZeroRClassifier
# Name = zerorcl

# MarControls = 20
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/done = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 63
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/nClasses = 2
# LinksTo = 1
# /Series/bextractNetwork/Classifier/cl/mrs_natural/nClasses
# LinkedFrom = 0
# mrs_natural/onObservations = 2
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/prediction = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/classProbabilities = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 1
# /Series/bextractNetwork/Classifier/cl/mrs_realvec/classProbabilities
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 2


# type: matrix
# rows: 2
# columns: 1
0
0

# Size = 2
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Mean_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,,annotation
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/mode = predict
# LinksTo = 1
# /Series/bextractNetwork/Classifier/cl/mrs_string/mode
# LinkedFrom = 0
# mrs_string/onObsNames = ,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = GaussianClassifier
# Name = gaussiancl

# MarControls = 20
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 63
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/nClasses = 2
# LinksTo = 1
# /Series/bextractNetwork/Classifier/cl/mrs_natural/nClasses
# LinkedFrom = 0
# mrs_natural/onObservations = 4
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/classProbabilities = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 1
# /Series/bextractNetwork/Classifier/cl/mrs_realvec/classProbabilities
# LinkedFrom = 0
# mrs_realvec/covars = # MARSYAS mrs_realvec
# Size = 126


# type: matrix
# rows: 2
# columns: 63
468.869 615.387 75.4015 6285.76 0.044519 0.21628 0.464029 0.87714 1.60301 2.56265 2.90107 2.64503 3.31791 3.32187 3.5475 3.19356 3.97639 7.70572e+07 1.14096e+08 1.05881e+08 9.34181e+07 6.79804e+07 8.37004e+07 1.09459e+08 1.00699e+08 7.97229e+07 8.41998e+07 8.03057e+07 7.57764e+07 1.72909 0.00499475 2883.62 3297.16 107.884 13269.4 0.880874 5.6861 12.6585 21.3447 36.7289 49.0483 55.7181 50.7064 45.9727 43.8252 40.2615 41.9976 39.1765 1.00148e+08 1.2449e+08 1.30284e+08 1.08211e+08 9.76348e+07 6.95851e+07 1.02074e+08 9.72073e+07 9.10744e+07 1.08876e+08 8.70472e+07 8.14155e+07 9.27281 0.00398995 0
302.833 393.073 35.5246 6318.66 0.0454631 0.336484 0.56398 0.84802 2.14753 2.58677 2.96596 4.27895 5.61379 6.18182 7.79136 6.17301 10.7847 2.41724e+08 2.60109e+08 2.31459e+08 2.55434e+08 2.57566e+08 2.37803e+08 2.19768e+08 1.66053e+08 1.97938e+08 2.2711e+08 1.88752e+08 2.08085e+08 4.6382 0.0127685 409.548 392.475 65.1543 10182.7 0.25756 1.06751 4.31874 3.88959 7.70317 17.4186 16.5066 22.8208 34.2347 37.4197 43.422 46.6318 46.5661 1.14664e+08 1.10535e+08 1.07103e+08 1.17464e+08 9.48795e+07 9.77271e+07 1.01615e+08 8.60247e+07 1.01002e+08 1.1177e+08 7.61593e+07 8.19344e+07 12.5985 0.00590344 0

# Size = 126
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/means = # MARSYAS mrs_realvec
# Size = 126


# type: matrix
# rows: 2
# columns: 63
0.08893 0.0631841 0.150745 0.0787993 -54.1376 5.2065 -0.40308 1.5033 -0.069623 0.231929 -0.110145 -0.022056 -0.0989326 -0.0666791 -0.0940789 -0.0766414 -0.072582 7.81596e-05 7.25618e-05 7.17775e-05 7.44166e-05 7.6569e-05 7.94766e-05 7.70107e-05 7.92342e-05 8.12133e-05 7.97879e-05 8.11863e-05 8.01554e-05 1.98049 7.0198 0.0261323 0.0209246 0.0782252 0.025432 1.73974 0.846103 0.660438 0.562421 0.502759 0.470832 0.456061 0.453869 0.453125 0.45094 0.447091 0.433403 0.432052 6.10275e-05 5.68667e-05 5.56111e-05 5.90316e-05 5.93871e-05 6.55151e-05 6.1963e-05 6.43259e-05 6.52274e-05 6.13209e-05 6.36086e-05 6.23232e-05 0.479294 5.16224 0
0.110017 0.0856682 0.277312 0.0875973 -58.3016 4.28144 -0.324185 1.78982 0.129344 -0.0316791 0.0451918 -0.094523 0.0209529 0.00604054 -0.0607058 -0.0343051 0.0205858 3.79205e-05 3.94953e-05 3.91369e-05 3.86175e-05 3.75497e-05 3.83742e-05 3.92941e-05 4.02826e-05 3.81883e-05 3.56835e-05 3.63815e-05 3.74397e-05 1.82111 6.981 0.0667871 0.0620422 0.210224 0.0290124 3.97203 1.92755 1.17335 1.20614 0.902746 0.706476 0.715015 0.648198 0.569341 0.542819 0.511972 0.4844 0.462693 4.21265e-05 4.52787e-05 4.45179e-05 4.44195e-05 4.33783e-05 4.37127e-05 4.37924e-05 4.52093e-05 4.26761e-05 3.92718e-05 4.06401e-05 4.20635e-05 0.546284 6.92728 0

# Size = 126
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 4


# type: matrix
# rows: 4
# columns: 1
0
0
0
0

# Size = 4
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Mean_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,,annotation
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/mode = predict
# LinksTo = 1
# /Series/bextractNetwork/Classifier/cl/mrs_string/mode
# LinkedFrom = 0
# mrs_string/onObsNames = ,
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = SVMClassifier
# Name = svmcl

# MarControls = 46
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/output_classPerms = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/probability = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/shrinking = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/cache_size = 100
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/coef0 = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/degree = 3
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/gamma = 4
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 63
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/l = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/nClasses = 2
# LinksTo = 1
# /Series/bextractNetwork/Classifier/cl/mrs_natural/nClasses
# LinkedFrom = 0
# mrs_natural/nr_class = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/nr_weight = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 4
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/C = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/eps = 0.001
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/nu = 0.5
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 22050
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/p = 0.1
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/SV = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/classPerms = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/classProbabilities = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 1
# /Series/bextractNetwork/Classifier/cl/mrs_realvec/classProbabilities
# LinkedFrom = 0
# mrs_realvec/label = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/maximums = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/minimums = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/nSV = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/probA = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/probB = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 4


# type: matrix
# rows: 4
# columns: 1
0
0
0
0

# Size = 4
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/rho = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/sv_coef = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/weight = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/weight_label = # MARSYAS mrs_realvec
# Size = 0


# type: matrix
# rows: 1
# columns: 0


# Size = 0
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/inObsNames = Mean_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Mean_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_ZeroCrossings_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Centroid_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Rolloff_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_Flux_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC0_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC1_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC2_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC3_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC4_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC5_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC6_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC7_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC8_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC9_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC10_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC11_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_MFCC12_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_A#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_B_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_C#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_D#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_E_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_F#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Chroma_G#_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Average_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,Std_Mem20_PeakRatio_Minimum_Chroma_A_Power_powerFFT_WinHamming_HopSize512_WinSize512_Sum_AudioCh0,,annotation
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/kernel = LINEAR
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/mode = predict
# LinksTo = 1
# /Series/bextractNetwork/Classifier/cl/mrs_string/mode
# LinkedFrom = 0
# mrs_string/onObsNames = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/svm = C_SVC
# LinksTo = 0
# LinkedFrom = 0
# MarSystem
# Type = Confidence
# Name = confidence

# MarControls = 24
# mrs_bool/active = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/debug = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/fileOutput = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/forcePrint = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/mute = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/print = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_bool/verbose = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/hopSize = 512
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inObservations = 4
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/inStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/memSize = 40
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/nLabels = 2
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onObservations = 4
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onSamples = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/onStabilizingDelay = 1
# LinksTo = 0
# LinkedFrom = 0
# mrs_natural/write = 0
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/israte = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_real/osrate = 43.0664
# LinksTo = 0
# LinkedFrom = 0
# mrs_realvec/processedData = # MARSYAS mrs_realvec
# Size = 4


# type: matrix
# rows: 4
# columns: 1
0
0
0
0

# Size = 4
# MARSYAS mrs_realvec

# LinksTo = 0
# LinkedFrom = 0
# mrs_string/fileName = bextract_single.mf
# LinksTo = 1
# /Series/bextractNetwork/mrs_string/filename
# LinkedFrom = 0
# mrs_string/inObsNames = ,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/labelNames = music,speech,
# LinksTo = 0
# LinkedFrom = 0
# mrs_string/onObsNames = ,
# LinksTo = 0
# LinkedFrom = 0

