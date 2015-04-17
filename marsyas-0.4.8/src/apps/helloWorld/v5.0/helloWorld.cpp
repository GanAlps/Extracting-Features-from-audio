#include "MarSystemManager.h"
using namespace std;
using namespace Marsyas;

double* recognize(string sfName)
{
	MarSystemManager mng;
	MarSystem* pnet = mng.create("Series", "pnet");
	MarSystem* Fanout1 = mng.create("Fanout","Fanout1");
	MarSystem* Fanout2 = mng.create("Fanout","Fanout2");
	MarSystem* Spec = mng.create("Series", "Spec");
	MarSystem* SerCentroid = mng.create("Series", "SerCentroid");
	MarSystem* SerRolloff = mng.create("Series", "SerRolloff");
	MarSystem* SerFlux = mng.create("Series", "SerFlux");
	MarSystem* SerSpecMean = mng.create("Series", "SerSpecMean");
	MarSystem* SerSpecMed = mng.create("Series", "SerSpecMed");
	//MarSystem* SerMean = mng.create("Series", "SerMean");		//comming same as spectral Mean
	MarSystem* SerStdDev = mng.create("Series", "SerStdDev");
	MarSystem* SerSkew = mng.create("Series", "SerSkew");
	MarSystem* SerKurtosis = mng.create("Series", "SerKurtosis");
	MarSystem* SerPower = mng.create("Series", "SerPower");
	MarSystem* SerAutoCor = mng.create("Series", "SerAutoCor");
	MarSystem* SerZeroCross = mng.create("Series", "SerZeroCross");
	MarSystem* SerRms = mng.create("Series", "SerRms");
	MarSystem* SerAmdf = mng.create("Series", "SerAmdf");
	MarSystem* SerMFCC = mng.create("Series", "SerMFCC");
	MarSystem* SerLPC = mng.create("Series", "SerLPC");
	MarSystem* SerMaxMin = mng.create("Series", "SerMaxMin"); //Distorting sound
	MarSystem* SerPeaker = mng.create("Series", "SerPeaker");
	MarSystem* SerChroma = mng.create("Series", "SerChroma");
	MarSystem* SerEnergy = mng.create("Series", "SerEnergy");
	//MarSystem* SerSCF = mng.create("Series", "SerSCF"); //Enough feature are up there no space for more.
														  //You can replace above ones by below ones to make them work.
	//MarSystem* SerSFM = mng.create("Series", "SerSFM"); //many values coming out as 'nan'
	//MarSystem* SerSnr = mng.create("Series", "SerSnr");
	//MarSystem* SerSpecSnr = mng.create("Series", "SerSepecSnr"); //printing extra stuff!!
	//MarSystem* SerF0analysis = mng.create("Series", "F0analysis");
	
	// standard network
	pnet->addMarSystem(mng.create("SoundFileSource", "src"));
	pnet->updctrl("SoundFileSource/src/mrs_string/filename", sfName);
	
	Fanout1->addMarSystem(mng.create("AudioSink", "dest"));
	Fanout1->updctrl("AudioSink/dest/mrs_bool/initAudio", true);
	
	Spec->addMarSystem(mng.create("Spectrum","spk"));
	
	SerCentroid->addMarSystem(mng.create("Centroid", "centeroid"));
	SerCentroid->addMarSystem(mng.create("Gain", "g2"));
	
	SerRolloff->addMarSystem(mng.create("Rolloff", "rolloff"));
	SerRolloff->addMarSystem(mng.create("Gain", "g3"));
	
	SerFlux->addMarSystem(mng.create("Flux", "flux"));
	//SerFlux->updctrl("Flux/flux/mrs_bool/reset",true);
	SerFlux->addMarSystem(mng.create("Gain", "g4"));
	
	SerSpecMean->addMarSystem(mng.create("Mean", "Specmean"));
	SerSpecMean->addMarSystem(mng.create("Gain", "g5"));
	
	SerSpecMed->addMarSystem(mng.create("Median", "Specmed"));
	SerSpecMed->addMarSystem(mng.create("Gain", "g15"));
	
	SerSkew->addMarSystem(mng.create("Skewness", "skewness"));
	SerSkew->addMarSystem(mng.create("Gain", "g7"));
	
	SerKurtosis->addMarSystem(mng.create("Kurtosis", "kurtosis"));
	SerKurtosis->addMarSystem(mng.create("Gain", "g8"));
	
	SerPower->addMarSystem(mng.create("Power", "power"));
	SerPower->addMarSystem(mng.create("Gain", "g8"));
	
	SerAutoCor->addMarSystem(mng.create("AutoCorrelation", "autocor"));
	SerAutoCor->addMarSystem(mng.create("Gain", "g9"));
	
	SerRms->addMarSystem(mng.create("Rms", "rms"));
	SerRms->addMarSystem(mng.create("Gain", "g11"));
	
	SerMFCC->addMarSystem(mng.create("PowerSpectrum", "powspec"));
	SerMFCC->addMarSystem(mng.create("MFCC", "mfcc"));
	SerMFCC->addMarSystem(mng.create("Gain", "g13"));
	
	SerLPC->addMarSystem(mng.create("LPC", "lpc"));
	//SerLPC->updctrl("LPC/lpc/mrs_natural/order",5);
	SerLPC->addMarSystem(mng.create("LPCC", "lpcc"));
	//SerLPC->addMarSystem(mng.create("LSP", "lsp"));
	SerLPC->addMarSystem(mng.create("Gain", "g14"));
	
	SerMaxMin->addMarSystem(mng.create("MaxMin", "maxmin"));
	SerMaxMin->addMarSystem(mng.create("Gain", "g16"));
	
	SerChroma->addMarSystem(mng.create("Chroma", "chroma"));
	SerChroma->addMarSystem(mng.create("Gain", "g18"));
	
	////SerSCF->addMarSystem(mng.create("SCF", "scf"));
	////SerSCF->addMarSystem(mng.create("Gain", "g20"));
	
	////SerSFM->addMarSystem(mng.create("SFM", "sfm"));
	////SerSFM->addMarSystem(mng.create("Gain", "g21"));
	
	////SerSpecSnr->addMarSystem(mng.create("SpectralSNR", "specsnr"));
	////SerSpecSnr->addMarSystem(mng.create("Gain", "g23"));
	
	Fanout2->addMarSystem(SerCentroid);
	Fanout2->addMarSystem(SerRolloff);
	Fanout2->addMarSystem(SerFlux);
	Fanout2->addMarSystem(SerSpecMean);
	Fanout2->addMarSystem(SerSpecMed);
	Fanout2->addMarSystem(SerSkew);
	Fanout2->addMarSystem(SerKurtosis);
	Fanout2->addMarSystem(SerPower);
	////Fanout2->addMarSystem(SerAutoCor);
	Fanout2->addMarSystem(SerRms);
	Fanout2->addMarSystem(SerMFCC);
	Fanout2->addMarSystem(SerLPC);
	////Fanout2->addMarSystem(SerMaxMin);
	Fanout2->addMarSystem(SerChroma);
	////Fanout2->addMarSystem(SerSFM);
	////Fanout2->addMarSystem(SerSCF);
	////Fanout2->addMarSystem(SerSpecSnr);
	
		
	Spec->addMarSystem(Fanout2);
	
	Fanout1->addMarSystem(Spec);
	
//	SerMean->addMarSystem(mng.create("Mean", "mean"));
//	SerMean->addMarSystem(mng.create("Gain", "g6"));
//	Fanout1->addMarSystem(SerMean);
	
	SerStdDev->addMarSystem(mng.create("StandardDeviation", "stddev"));
	SerStdDev->addMarSystem(mng.create("Gain", "g6"));
	
	SerZeroCross->addMarSystem(mng.create("ZeroCrossings", "zerocross"));
	SerZeroCross->addMarSystem(mng.create("Gain", "g10"));
	
	SerAmdf->addMarSystem(mng.create("AMDF", "amdf"));
	SerAmdf->addMarSystem(mng.create("Gain", "g12"));
	
	SerPeaker->addMarSystem(mng.create("Peaker", "peaker"));
	SerPeaker->addMarSystem(mng.create("Gain", "g17"));
	
	SerEnergy->addMarSystem(mng.create("Energy", "energy"));
	SerEnergy->addMarSystem(mng.create("Gain", "g19"));
	
//	SerF0analysis->addMarSystem(mng.create("F0Analysis", "f0analysis"));
//	SerF0analysis->addMarSystem(mng.create("Gain", "g17"));
	
	////SerSnr->addMarSystem(mng.create("SNR", "snr"));
	////SerSnr->addMarSystem(mng.create("Gain", "g22"));
	
	Fanout1->addMarSystem(SerStdDev);
	Fanout1->addMarSystem(SerZeroCross);
	Fanout1->addMarSystem(SerAmdf);
	Fanout1->addMarSystem(SerPeaker);
	Fanout1->addMarSystem(SerEnergy);
	////Fanout1->addMarSystem(SerSnr);
//	Fanout1->addMarSystem(SerF0analysis);
	
	pnet->addMarSystem(Fanout1);
	double* FVec = (double*) malloc(1851*sizeof(double));
	//512+10+512+257+13+12+10+12+1+512
	
	while ( pnet->getctrl("SoundFileSource/src/mrs_bool/hasData")->to<mrs_bool>() )
	{
		pnet->tick();
		
		mrs_natural i=0,j=0;
		// gets data from the Spectrum for read only!
		const realvec& spectrum =
		    Spec->getctrl("Spectrum/spk/mrs_realvec/processedData")->to<mrs_realvec>(); //512 X 1 vector
		for(i=0;i<512;i++)
			FVec[i] = spectrum(i);
		
		const realvec& center = SerCentroid->getctrl("Centroid/centeroid/mrs_realvec/processedData")->to<mrs_realvec>();
		FVec[i++] = center(0,0);
		
		const realvec& rolloff = SerRolloff->getctrl("Rolloff/rolloff/mrs_realvec/processedData")->to<mrs_realvec>();
		FVec[i++] = rolloff(0,0);
		
		////const realvec& flux = SerFlux->getctrl("Flux/flux/mrs_realvec/processedData")->to<mrs_realvec>();
		////FVec[i++] = flux(0,0); //ERROR: output is nan or 0??
		
		const realvec& Specmean = SerSpecMean->getctrl("Mean/Specmean/mrs_realvec/processedData")->to<mrs_realvec>();
		FVec[i++] = Specmean(0,0);
		
		const realvec& Specmed = SerSpecMed->getctrl("Median/Specmed/mrs_realvec/processedData")->to<mrs_realvec>();
		FVec[i++] = Specmed(0,0);
		
		//const realvec& mean = SerMean->getctrl("Mean/mean/mrs_realvec/processedData")->to<mrs_realvec>();
		//FVec[i++] = mean(0,0);
		
		const realvec& StdDev = SerStdDev->getctrl("StandardDeviation/stddev/mrs_realvec/processedData")->to<mrs_realvec>();
		FVec[i++] = StdDev(0,0);
		
		const realvec& skew = SerSkew->getctrl("Skewness/skewness/mrs_realvec/processedData")->to<mrs_realvec>();
		FVec[i++] = skew(0,0);
		
		const realvec& kurtosis = SerKurtosis->getctrl("Kurtosis/kurtosis/mrs_realvec/processedData")->to<mrs_realvec>();
		FVec[i++] = kurtosis(0,0);
		
		const realvec& power = SerPower->getctrl("Power/power/mrs_realvec/processedData")->to<mrs_realvec>();
		FVec[i++] = power(0,0);
		
		////const realvec& autocor = SerAutoCor->getctrl("AutoCorrelation/autocor/mrs_realvec/processedData")->to<mrs_realvec>();
		////FVec[i++] = autocor(0,0);
		
		const realvec& zerocross = SerZeroCross->getctrl("ZeroCrossings/zerocross/mrs_realvec/processedData")->to<mrs_realvec>();
		FVec[i++] = zerocross(0,0);
		
		const realvec& rms = SerRms->getctrl("Rms/rms/mrs_realvec/processedData")->to<mrs_realvec>();
		FVec[i++] = rms(0,0);
		
		const realvec& amdf = SerAmdf->getctrl("AMDF/amdf/mrs_realvec/processedData")->to<mrs_realvec>(); //1 X 512 vector
		for(j=0;j<512;j++,i++)
			FVec[i] = amdf(j);
		
		const realvec& powspec = SerMFCC->getctrl("PowerSpectrum/powspec/mrs_realvec/processedData")->to<mrs_realvec>(); //257 X 1 vector
		for(j=0;j<257;j++,i++)
			FVec[i] = powspec(j);
		
		const realvec& mfcc = SerMFCC->getctrl("MFCC/mfcc/mrs_realvec/processedData")->to<mrs_realvec>(); //13 X 1 vector
		for(j=0;j<13;j++,i++)
			FVec[i] = mfcc(j);
		
		const realvec& lpc = SerLPC->getctrl("LPC/lpc/mrs_realvec/processedData")->to<mrs_realvec>(); //12 X 1 vector
		for(j=0;j<12;j++,i++)
			FVec[i] = lpc(j);
		
		const realvec& lpcc = SerLPC->getctrl("LPCC/lpcc/mrs_realvec/processedData")->to<mrs_realvec>(); //10 X 1 vector
		for(j=0;j<10;j++,i++)
			FVec[i] = lpcc(j);
		
		//const realvec& lsp = SerLPC->getctrl("LSP/lsp/mrs_realvec/processedData")->to<mrs_realvec>(); //12 X 1 vector
		//for(j=0;j<12;j++,i++)
		//	FVec[i] = lsp(j);
		
		////const realvec& maxmin = SerMaxMin->getctrl("MaxMin/maxmin/mrs_realvec/processedData")->to<mrs_realvec>();
		////Fvec[i++] = maxmin(0); Fvec[i++] = maxmin(1); 
		
		//const realvec& f0 = SerF0analysis->getctrl("F0Analysis/f0analysis/mrs_realvec/processedData")->to<mrs_realvec>();
		//Error F0Analysis was not recognized
		
		const realvec& chroma = SerChroma->getctrl("Chroma/chroma/mrs_realvec/processedData")->to<mrs_realvec>(); // 12 X 1 vector
		for(j=0;j<12;j++,i++)
			FVec[i] = chroma(j);
		
		const realvec& energy = SerEnergy->getctrl("Energy/energy/mrs_realvec/processedData")->to<mrs_realvec>();
		FVec[i++] = energy(0,0);
		
		////const realvec& scf = SerSCF->getctrl("SCF/scf/mrs_realvec/processedData")->to<mrs_realvec>(); //24 X 1 vector
		////for(j=0;j<24;j++,i++)
		////	FVec[i] = scf(j);
		
		////const realvec& sfm = SerSFM->getctrl("SFM/sfm/mrs_realvec/processedData")->to<mrs_realvec>();
		////for(j=0;j<CHECK-IT;j++,i++) //Check the no. of rows amd col by: cout << sfm
		////	FVec[i] = sfm(j);
		
		////const realvec& snr = SerSnr->getctrl("SNR/snr/mrs_realvec/processedData")->to<mrs_realvec>(); //2 X 1 vector
		////for(j=0;j<2;j++,i++)
		////	FVec[i] = snr(j);
		
		////const realvec& specsnr = SerSpecSnr->getctrl("SpectralSNR/specsnr/mrs_realvec/processedData")->to<mrs_realvec>();
		////FVec[i++] = specsnr(0,0);
		
		const realvec& peaks = SerPeaker->getctrl("Peaker/peaker/mrs_realvec/processedData")->to<mrs_realvec>(); //1 X 512 vector with some peaks other zeros
		for(j=0;j<512;j++)
			if(peaks(j)>0)
				FVec[i++] = peaks(j);

		cout<<FVec[10]<<"\n";

		/*
		cout << "\nOriginal Spectrum = " << spectrum(1) << endl;
		cout << "Centroid = " << center(0,0) << endl;
		cout << "Roll Off = " << rolloff(0,0) << endl;
		////cout << "Flux = " << flux(0,0) << endl;
		cout << "Spectral Mean = " << Specmean(0,0) << endl;
		cout << "Spectral Median = " << Specmed(0,0) << endl;
		//cout << "Mean = " << mean(0,0) << endl;
		cout << "Standard Deviation = " << StdDev(0,0) << endl;
		cout << "Spectral Skewness = " << skew(0,0) << endl;
		cout << "Spectral Kurtosis = " << kurtosis(0,0) << endl;
		cout << "Spectral Power = " << power(0,0) << endl;
		////cout << "Spectral AutoCorrelation = " << autocor(0,0) << endl;
		cout << "Zero Crossings rate = " << zerocross(0,0) << endl;
		cout << "RMS Energy = " << rms(0,0) << endl;
		cout << "AMDF = " << amdf(500) <<"\t" << FVec[1023] << endl; //1 X 512 vector
		cout << "Power Spectrum = " << powspec(200) << endl; //257 X 1 vector
		cout << "MFCC = " << mfcc(12) << endl; //13 X 1 vector
		cout << "LPC = " << lpc(5) << endl; //12 X 1 vector
		cout << "LPCC = " << lpcc(5) << endl; //10 X 1 vector
		//cout << "LSP = " << lsp(5) << endl; //12 X 1 vector
		////cout << "Max Value = " << maxmin(0) << endl << "Min Value = " << maxmin(1) << endl;
		//cout << "F0 = " << f0 << endl;
		cout << "Chroma = " << chroma(5) << endl; // 12 X 1 vector
		cout << "Energy = " << energy(0,0) << endl;
		////cout << "SCF = " << scf(2) << endl; //24 X 1 vector
		////cout << "SFM = " << sfm << endl;
		////cout << "SNR = " << snr(0) << endl; //2 X 1 vector
		////cout << "Spectral SNR = " << specsnr(0,0) << endl; //printing extra stuff, get rid of it!!
		cout << "Peaks = " << FVec[i-3] << endl; //1 X 512 vector with some peaks other zeros
		*/
		
	}
	return FVec;
}

int main(int argc, const char **argv)
{
	string fileName;
	if (argc<2)
	{
		cout<<"Please enter filename."<<endl;
		exit(1);
	}
	else
	{
		fileName = argv[1];
	}
	cout << "Processing file " << fileName << endl;

	double *FVec;
	FVec = recognize(fileName);
	
	for(int i=0;i<1851;i++)
		cout<<FVec[i]<<"\t";
	
	exit(0);
}


