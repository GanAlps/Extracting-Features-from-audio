#include "MarSystemManager.h"
using namespace std;
using namespace Marsyas;

void recognize(string sfName)
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
	
	Fanout2->addMarSystem(SerCentroid);
	Fanout2->addMarSystem(SerRolloff);
	Fanout2->addMarSystem(SerFlux);
	Fanout2->addMarSystem(SerSpecMean);
	Fanout2->addMarSystem(SerSkew);
	Fanout2->addMarSystem(SerKurtosis);
	Fanout2->addMarSystem(SerPower);
	Fanout2->addMarSystem(SerAutoCor);
	Fanout2->addMarSystem(SerRms);
	Fanout2->addMarSystem(SerMFCC);
		
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
	
	Fanout1->addMarSystem(SerStdDev);
	Fanout1->addMarSystem(SerZeroCross);
	Fanout1->addMarSystem(SerAmdf);
	
	pnet->addMarSystem(Fanout1);

	while ( pnet->getctrl("SoundFileSource/src/mrs_bool/hasData")->to<mrs_bool>() )
	{
		pnet->tick();
		// gets data from the Spectrum for read only!
		const realvec& processedData =
		    Spec->getctrl("Spectrum/spk/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "\nOriginal Spectrum = " << processedData(1) << endl;
		
		const realvec& center = SerCentroid->getctrl("Centroid/centeroid/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "Centroid = " << center(0,0) << endl;
		
		const realvec& rolloff = SerRolloff->getctrl("Rolloff/rolloff/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "Roll Off = " << rolloff(0,0) << endl;
		
		const realvec& flux = SerFlux->getctrl("Flux/flux/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "Flux = " << flux(0,0) << endl;
		
		const realvec& Specmean = SerSpecMean->getctrl("Mean/Specmean/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "Spectral Mean = " << Specmean(0,0) << endl;
		
		//const realvec& mean = SerMean->getctrl("Mean/mean/mrs_realvec/processedData")->to<mrs_realvec>();
		//cout << "Mean = " << mean(0,0) << endl;
		
		const realvec& StdDev = SerStdDev->getctrl("StandardDeviation/stddev/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "Standard Deviation = " << StdDev(0,0) << endl;
		
		const realvec& skew = SerSkew->getctrl("Skewness/skewness/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "Spectral Skewness = " << skew(0,0) << endl;
		
		const realvec& kurtosis = SerKurtosis->getctrl("Kurtosis/kurtosis/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "Spectral Kurtosis = " << kurtosis(0,0) << endl;
		
		const realvec& power = SerPower->getctrl("Power/power/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "Spectral Power = " << power(0,0) << endl;
		
		const realvec& autocor = SerAutoCor->getctrl("AutoCorrelation/autocor/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "Spectral AutoCorrelation = " << autocor(0,0) << endl;
		
		const realvec& zerocross = SerZeroCross->getctrl("ZeroCrossings/zerocross/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "Zero Crossings rate = " << zerocross(0,0) << endl;
		
		const realvec& rms = SerRms->getctrl("Rms/rms/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "RMS Energy = " << rms(0,0) << endl;
		
		const realvec& amdf = SerAmdf->getctrl("AMDF/amdf/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "AMDF = " << amdf(500) << endl; //1 X 512 vector
		
		const realvec& powspec = SerMFCC->getctrl("PowerSpectrum/powspec/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "Power Spectrum = " << powspec(200) << endl; //257 X 1 vector
		
		const realvec& mfcc = SerMFCC->getctrl("MFCC/mfcc/mrs_realvec/processedData")->to<mrs_realvec>();
		cout << "MFCC = " << mfcc(12) << endl; //13 X 1 vector
		
	}
	delete pnet;
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

	recognize(fileName);
	exit(0);
}


