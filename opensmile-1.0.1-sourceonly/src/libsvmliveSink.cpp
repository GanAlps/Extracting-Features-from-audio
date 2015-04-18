/*F******************************************************************************
*
* openSMILE - open Speech and Music Interpretation by Large-space Extraction
*       the open-source Munich Audio Feature Extraction Toolkit
* Copyright (C) 2008-2009  Florian Eyben, Martin Woellmer, Bjoern Schuller
*
*
* Institute for Human-Machine Communication
* Technische Universitaet Muenchen (TUM)
* D-80333 Munich, Germany
*
*
* If you use openSMILE or any code from openSMILE in your research work,
* you are kindly asked to acknowledge the use of openSMILE in your publications.
* See the file CITING.txt for details.
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*
******************************************************************************E*/


/*  openSMILE component:

LibSVM live classifier/regressor

*/



#include <libsvmliveSink.hpp>

#define MODULE "cLibsvmLiveSink"


SMILECOMPONENT_STATICS(cLibsvmLiveSink)

//sComponentInfo * cLibsvmLiveSink::registerComponent(cConfigManager *_confman)
SMILECOMPONENT_REGCOMP(cLibsvmLiveSink)
{
  SMILECOMPONENT_REGCOMP_INIT
    scname = COMPONENT_NAME_CLIBSVMLIVESINK;
  sdescription = COMPONENT_DESCRIPTION_CLIBSVMLIVESINK;

  // we inherit cDataSink configType and extend it:
  SMILECOMPONENT_INHERIT_CONFIGTYPE("cDataSink")

    SMILECOMPONENT_IFNOTREGAGAIN_BEGIN
    ct->makeMandatory(ct->setField("model","LibSVM model file(s) to load","svm.model",ARRAY_TYPE));
  ct->makeMandatory(ct->setField("scale","LibSVM scale file(s) to load","svm.scale",ARRAY_TYPE));
  ct->setField("fselection","Feature selection file(s) to apply (leave empty to use all features). The feature selection files must contain the exact names of the selected features, one feature per line.",(const char*)NULL,ARRAY_TYPE);
  ct->setField("classes","Class name lookup file(s), which map the libsvm class indicies to actual class names (leave empty to display libsvm class numbers/indicies) [note: currently only ONE class name lookup file is supported!]",(const char*)NULL,ARRAY_TYPE);
  ct->setField("predictProbability","1 = predict class probabilities (confidences) (0 = no)",0);
  ct->setField("printResult","1 = print classification/regression result to console",0);
  ct->setField("resultRecp","List of component(s) to send 'classificationResult' messages to (use , to separate multiple recepients), leave blank (NULL) to not send any messages",(const char *) NULL);
  ct->setField("resultMessageName","Freely defineable name that is sent with 'classificationResult' message","svm_result");
  ct->setField("forceScale","1 = for the input values, enforce the range specified in the scale file by clipping out-of-range values (after scaling).",1);
  ct->setField("lag","read data <lag> frames behind (should always remain 0 for this component...?)",0,0,0);

  SMILECOMPONENT_IFNOTREGAGAIN_END

    SMILECOMPONENT_MAKEINFO(cLibsvmLiveSink);
}

SMILECOMPONENT_CREATE(cLibsvmLiveSink)

//-----

cLibsvmLiveSink::cLibsvmLiveSink(const char *_name) :
cDataSink(_name),
classesarray(NULL),modelarray(NULL), scalearray(NULL), predictProbability(0),
labels(NULL), probEstimates(NULL),
nClasses(0), printResult(1),
//fselType(0), Nsel(-1),
nMdls(0),modelchoice(0),
fselections(NULL),
classNames(NULL), nCls(0),
sendResult(0),
resultMessageName(NULL), resultRecp(NULL)
{
  /*
  outputSelIdx.enabled = NULL;
  outputSelStr.n = 0;
  outputSelStr.names = NULL;
  */
}

void cLibsvmLiveSink::fetchConfig()
{
  cDataSink::fetchConfig();
  nMdls = getArraySize("model");

  if (nMdls >0)
  {
    int nScales = getArraySize("scale");
    if (nScales != nMdls) { SMILE_IWRN(1,"size of 'scale' array is different from size of 'model' array!"); }
    int nFselection = getArraySize("fselection");
    if (nFselection != nMdls) { SMILE_IWRN(3,"size of 'fselection' array is different from size of 'model' array!"); }

    model = (struct svm_model**)calloc(1,sizeof(struct svm_model*)*nMdls);
    scale = (struct svm_scale**)calloc(1,sizeof(struct svm_scale*)*nMdls);
    fselections = (sFselectionData*)calloc(1,sizeof(sFselectionData)*nMdls);

    modelarray = (char**)calloc(1,sizeof(char*)*nMdls);
    scalearray = (char**)calloc(1,sizeof(char*)*nMdls);
    for (int i=0; i<nMdls; i++) {
      const char *tmp = getStr_f(myvprint("model[%i]",i));
      if (tmp!=NULL) modelarray[i] = strdup(tmp);
      tmp = getStr_f(myvprint("scale[%i]",i));
      if (tmp!=NULL) scalearray[i] = strdup(tmp);
      tmp = getStr_f(myvprint("fselection[%i]",i));
      if (tmp!=NULL) fselections[i].fselection = strdup(tmp);
    }
  } else {
    SMILE_IERR(1,"nModels < 1 ! You must specify at least one model to load!!");
    COMP_ERR("aborting...");
  }

  

//  fselection = getStr("fselection");
//  if (fselection != NULL) SMILE_IDBG(2,"filename of fselection to load = '%s'",fselection);

  classesarray = (char**)calloc(1,sizeof(char*)*nMdls);
  for (int i=0;i<nMdls;i++)
  {
    const char *tmp = getStr_f(myvprint("classes[%i]",i));
    if (tmp!=NULL) classesarray[i] = strdup(tmp);
    //classesarray[i] = getStr("classes");
  //  if (classesarray[i] != NULL) { SMILE_IDBG(2,"filename of class mapping to load = '%s'",classesarray[i]); }
  }

  for (int i=0;i<nMdls;i++)
  {
    if (scalearray[i]!=NULL) { SMILE_IDBG(2,"Model #%i : filename of scale data to load = '%s'",i,scalearray[i]);}
    if (modelarray[i]!=NULL) { SMILE_IDBG(2,"Model #%i : filename of model to load = '%s'",i,modelarray[i]); }
    if (fselections[i].fselection!=NULL) { SMILE_IDBG(2,"Model #%i : filename of feature selection file to load = '%s'",i,fselections[i].fselection); }
    if (classesarray[i]!=NULL) { SMILE_IDBG(2,"Model #%i : filename of class mapping to load = '%s'",i,classesarray[i]); }
  }

  lag = getInt("lag");
  if (lag != 0) { SMILE_IDBG(2,"lag = %i frames",lag); }

  printResult = getInt("printResult");
  SMILE_IDBG(2,"printResult = %i",printResult);

  predictProbability = getInt("predictProbability");
  SMILE_IDBG(2,"predictProbability = %i",predictProbability);

  resultRecp = getStr("resultRecp");
  SMILE_IDBG(2,"resultRecp = '%s'",resultRecp);
  if (resultRecp != NULL) sendResult = 1;

  resultMessageName = getStr("resultMessageName");
  SMILE_IDBG(2,"resultMessageName = '%s'",resultMessageName);

  forceScale=getInt("forceScale");
  SMILE_IDBG(2,"forceScale = %i",forceScale);
}


#define MAX_LINE_LENGTH 2048

int cLibsvmLiveSink::loadClasses( const char *file )
{
  if (file != NULL) {
    if (strlen(file)<1) return 0;

    FILE *f = NULL;
    if (file != NULL) f = fopen(file,"r");
    if (f== NULL) {
      SMILE_IERR(2,"error opening class map file '%s' for reading! NOT using a class map!",file);
      return 0;
    }

    char line[MAX_LINE_LENGTH+1];
    nCls=0;

    while(fgets(line,MAX_LINE_LENGTH,f) != NULL) {
      if (strlen( line ) > 1) { 
        line[strlen( line ) - 1] = 0;
        const char *cn = strchr(line,':');
        if (cn!=NULL) {
          nCls++;
          // TODO: use class number instead of cont. index
        }
      }
    }
    fclose(f);

    f = fopen(file,"r");
    if (f== NULL) {
      SMILE_IERR(2,"error opening class map file '%s' for reading (2nd pass)! NOT using a class map!",file);
      return 0;
    }


    while(fgets(line,MAX_LINE_LENGTH,f) != NULL) {
      if (strlen( line ) > 1) { 
        line[strlen( line ) - 1] = 0;
        const char *cn = strchr(line,':');
        if (cn!=NULL) {
          classNames[classnames_run++] = strdup(cn+1);
          //SMILE_MSG(1,"%s",classNames[classnames_run-1]);
          //if (cn+2 !=NULL) classNames[classnames_run++] = strdup(cn+2);
          //if (cn+3 !=NULL) classNames[classnames_run++] = strdup(cn+3);

          // TODO: use class number instead of cont. index
        }
      }
    }
    fclose(f);
    SMILE_IMSG(3,"classNames[%i] = %s",classnames_run-1,classNames[classnames_run-1]);

    return 1;
  }
  return 0;
}

int cLibsvmLiveSink::loadSelection( const char *selFile, int index )
{
  if (selFile != NULL) {
    if (strlen(selFile)<1) return 0;

    FILE *f = fopen(selFile,"r");
    if (f== NULL) {
      SMILE_IERR(2,"error opening feature selection file '%s' for reading! NOT using a feature selection!",selFile);
      return 0;
    }

    // read first line to determine filetype:
    char line[MAX_LINE_LENGTH+1];
    long nStr=0;
    fgets( line, 5, f);
    line[3] = 0;
    if (!strncasecmp(line,"str",3)) { // string list
      fselections[index].fselType = 2;
      SMILE_IDBG(5,"reading string list of features");
      fscanf( f, "%u\n", &nStr);
      if (nStr < 1) { COMP_ERR("Error reading feature selection file, nFeatures < 1!"); }
      fselections[index].outputSelStr.n = nStr;
      fselections[index].Nsel=nStr;
      fselections[index].outputSelStr.names = (char **)calloc(1,sizeof(char *)*nStr);
      int i=0; line[0] = 0;
      while(fgets(line,MAX_LINE_LENGTH,f) != NULL) {
        if (strlen( line ) > 1) { 
          if (i<nStr) {
            line[strlen( line ) - 1] = 0;
            fselections[index].outputSelStr.names[i++] = strdup(line);
          } else { 
            SMILE_IERR(1,"excess line in feature selection file '%s' : '%s' (expected only %i lines with features)",selFile,line,nStr);
          }
        }
      }
      if (fselections[index].outputSelStr.n > i) {
        SMILE_IWRN(1,"less feature names (only %i) in feature selection file '%s' than specified in the header (%i).",i,selFile,fselections[index].outputSelStr.n);
        fselections[index].outputSelStr.n = i;
      }
      SMILE_IDBG(5,"enabled %i features",i);
      fclose(f);
      return 1;
    } else if (!strncasecmp(line,"idx",3)) { // index list
      fselections[index].fselType = 1;
      SMILE_IDBG(5,"reading index list of features");
      long idx=0; int i;
      // pass1: parse for max index
      while(fscanf(f,"%u\n",&idx) == 1)
        fselections[index].outputSelIdx.nFull = MAX(fselections[index].outputSelIdx.nFull, idx);
      SMILE_IDBG(5,"max index in selection file was found to be %i",fselections[index].outputSelIdx.nFull);
      fselections[index].outputSelIdx.nFull++;
      fselections[index].outputSelIdx.enabled = (long *)calloc(1,sizeof(long)*fselections[index].outputSelIdx.nFull);
      rewind( f );
      fgets(line, 5, f); // skip header line;
      // pass2: parse for max index
      i=0;
      while(fscanf(f,"%u\n",&idx) == 1) {
        fselections[index].outputSelIdx.enabled[idx] = 1; // enable feature "idx"
        i++;
      }
      fselections[index].outputSelIdx.nSel = i;
      fselections[index].Nsel = i;
      SMILE_IDBG(5,"enabled %i features",i);
      fclose(f);
      return 1;
    } else { // bogus file...
      fclose( f );
      COMP_ERR("error parsing fselection file '%s'. bogus header! expected 'str' or 'idx' at beginning. found '%s'.",selFile,line);
    }
  }
  return 0;
}

int cLibsvmLiveSink::myFinaliseInstance()
{
  int ap=0;

  int ret = cDataSink::myFinaliseInstance();
  if (ret==0) return 0;

  // load model
  SMILE_IMSG(2,"loading LibSVM model(s) ..."); 
  for (int i=0;i<nMdls;i++)
  {
    if((model[i]=svm_load_model(modelarray[i]))==0) {
      COMP_ERR("can't open libSVM model file '%s'",modelarray[i]);
    }
  }

  //TODO: support nClasses for each model independently!

  for (int i=0;i<nMdls;i++)
  {
    nClasses = svm_get_nr_class(model[i]);
    svmType = svm_get_svm_type(model[i]);
    // TODO: !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  }

  if(predictProbability) {
    if ((svmType==NU_SVR) || (svmType==EPSILON_SVR)) {
      nClasses = 0;
      for (int i=0;i<nMdls;i++)
      {
        SMILE_MSG(2,"LibSVM prob. model (regression) for test data: target value = predicted value + z,\nz: Laplace distribution e^(-|z|/sigma)/(2sigma),sigma=%g",svm_get_svr_probability(model[i]));
      }
    } else {
      labels=(int *) malloc(nClasses*sizeof(int));
      for (int i=0;i<nMdls;i++)
      {
        svm_get_labels(model[i],labels);
      }
      for (int i =0;i<nMdls;i++)
      {
        SMILE_MSG(3,"LibSVM %i labels in model '%s':",nClasses,modelarray[i]);
      }
      int j;
      for(j=0;j<nClasses;j++)
        SMILE_MSG(3,"  Label[%i] : '%d'",j,labels[j]);
    }
  }

  //?? move this in front of above if() block ?
  if ((predictProbability)&&(nClasses>0))
    probEstimates = (double *) malloc(nClasses*sizeof(double));

  // load scale
  for(int i=0;i<nMdls;i++)
  {
    if((scale[i]=svm_load_scale(scalearray[i]))==0) {
      COMP_ERR("can't open libSVM scale file '%s'",scalearray[i]);
    }
  }

  // load feature selection(s)
  long _N = reader->getLevelN();
  const FrameMetaInfo *_fmeta = reader->getFrameMetaInfo();
  for(int i=0;i<nMdls;i++) {
    if (fselections[i].fselection != NULL) {
      loadSelection(fselections[i].fselection,i);

      SMILE_IDBG(2,"building feature selection map for model %i",i);
      if (fselections[i].fselType) {
        if ((fselections[i].outputSelIdx.enabled == NULL)&&(fselections[i].outputSelStr.names != NULL)) {
          buildEnabledSelFromNames(_N, _fmeta, i);
        } // else if (outputSelIdx.enabled == NULL) Nft = vec->N;
      }
    }
  }

  //TODO: check compatibility of getLevelN() (possibly after selection), number of features in model, and scale

  classNames=(char**)calloc(1,sizeof(char*)*nClasses*nMdls);
  classnames_run = 0;
  for (int i=0;i<nMdls;i++)
  {
    if (nClasses>0) {
      // load class mapping
      loadClasses(classesarray[i]);
    } else {
      if (classesarray[i] != NULL) SMILE_IWRN(2,"not loading given class mapping file for regression SVR model (there are no classes...)!");
    }
  }

  return ret;
}

void cLibsvmLiveSink::processResult(long long tick, long frameIdx, double time, float res, double *probEstim, int nClasses, double dur, int isFinal)
{
  int clIdx = -1;
  if (printResult || sendResult) {
    if (labels!=NULL) {
      int i; int r = (int)res;
      for (i=0; i<nClasses; i++) {
        if (labels[i] == r) { clIdx = i; break; }
      }
      if (clIdx == -1) {
        SMILE_IERR(1,"svm error, result label (%f) not found in model->labels array!",res);
      }
    } else {
      clIdx = (int)res;
    }
  }

  if (printResult) {
    if ((nCls>0)&&(nClasses > 0)&&(classNames != NULL)) {
      if (clIdx >= nCls) clIdx = nCls;
      else if (clIdx < 0) clIdx = 0;
      SMILE_PRINT("\n LibSVM  '%s' result [f=%i] (@ time: %f) :  ~~> %s <~~",getInstName(),isFinal,time,classNames[clIdx]);
    } else {
      SMILE_PRINT("\n LibSVM  '%s' result [f=%i] (@ time: %f) :  ~~> %.2f <~~",getInstName(),isFinal,time,res);
    }
    if (probEstim != NULL) {
      int i;
      if ((svmType==C_SVC || svmType==NU_SVC)) {
        for (i=0; i<nClasses; i++) {
          int idx = i;
          if (labels!=NULL) idx = labels[i];
          if ((nCls>0)&&(nClasses > 0)&&(classNames != NULL)) {
            if (idx >= nCls) idx=nCls-1;
            if (idx < 0) idx = 0;
            SMILE_PRINT("     prob. class '%s': \t %f",classNames[i],probEstim[i]);
          } else {
            SMILE_PRINT("     prob. class %i : \t %f",idx,probEstim[i]);
          }
        }
      } else {
        SMILE_PRINT("     prob. of result : \t %f",probEstim[0]);
      }
    }
  }

  // send result as componentMessage 
  if (sendResult) {
    cComponentMessage msg("classificationResult", resultMessageName);
    if ((nCls>0)&&(nClasses > 0)&&(classNames != NULL)) {
      if (labels!=NULL) {
        if ((int)res >= nClasses) res = (float)(nClasses-1);
        if (res < 0.0) res = 0.0;
        res = (float)labels[(int)res];
      }
      if ((int)res >= nCls) res = (float)nCls;
      if (res < 0.0) res = 0.0;
      strncpy(msg.msgtext, classNames[(int)clIdx + modelchoice*sizeof(char)*nCls], CMSG_textLen);
    }
    msg.floatData[0] = res;
    msg.intData[0]   = nClasses;
    msg.intData[1]   = isFinal;
    msg.custData     = probEstim;
    msg.userTime1    = time;
    msg.userTime2    = time+dur;

    // TO TEST .....
    sendComponentMessage( resultRecp, &msg );
    SMILE_IDBG(3,"sending 'classificationResult' message to '%s'",resultRecp);
  }
}



int cLibsvmLiveSink::buildEnabledSelFromNames(long N, const FrameMetaInfo *fmeta, int index)
{
  int n,i;
  SMILE_IDBG(3,"computing mapping from feature names to feature indicies");
  fselections[index].outputSelIdx.nFull = N;
  fselections[index].outputSelIdx.nSel = fselections[index].outputSelStr.n;
  fselections[index].outputSelIdx.enabled = (long *)calloc(1,sizeof(long)*fselections[index].outputSelIdx.nFull);
  fselections[index].outputSelIdx.map = (long *)calloc(1,sizeof(long)*fselections[index].outputSelIdx.nSel);
  int nEnab=0;
  int *isFound = (int*)calloc(1,sizeof(int)*fselections[index].outputSelStr.n);
  for (n=0; n<N; n++) {
    //  int found=0;
    //  SMILE_IDBG(4,"selstr %i of %i",i,outputSelStr.n);
    const char * tmpname = fmeta->getName(n,NULL);
    for (i=0; i<fselections[index].outputSelStr.n; i++) {
      if (!isFound[i]) {
        if (!strcmp(tmpname,fselections[index].outputSelStr.names[i])) {
          fselections[index].outputSelIdx.enabled[n] = 1;
          fselections[index].outputSelIdx.map[i] = n;
          nEnab++; isFound[i]=1;
          break;
        }
      }
    }
    if (nEnab >= fselections[index].outputSelStr.n) break;
    /*
    if (found==0) {
    SMILE_IERR(1,"element '%s' requested in feature selection list, but it was not found in the input!",outputSelStr.names[i]);
    }*/
  }

  if (nEnab < fselections[index].outputSelStr.n) {
    SMILE_IERR(1,"%i features which were requested in feature selection file were not found in current input data! please check openSMILE config! These features are:",fselections[index].outputSelStr.n-nEnab);
    for (i=0; i<fselections[index].outputSelStr.n; i++) {
      if (isFound[i]==0) {
        SMILE_IERR(1,"  element '%s' ",fselections[index].outputSelStr.names[i]);
      }
    }
    COMP_ERR("Your system will not run stable, since the models are incompatible with the currently extracted features. Thus, we are aborting here!");
  } else {
    SMILE_IDBG(3,"mapping computed successfully");
  }
  free(isFound);
  return 1;
}

int cLibsvmLiveSink::myTick(long long t)
{
  //for (int i=0;i<nMdls;i++)
  //{
    if (model[modelchoice] == NULL) return 0;
  //}

  SMILE_DBG(4,"tick # %i, classifiy value vector using LibSVM (lag=%i):",t,lag);
  cVector *vec= reader->getNextFrame(); //reader->getFrameRel(lag);  //new cVector(nValues+1);
  if (vec == NULL) return 0;
  //  else reader->nextFrame();

  struct svm_node *x = NULL;
  int i = 0;
  double v;
  // need one more for index = -1
  long Nft = fselections[modelchoice].Nsel;
  if (Nft <= 0) Nft = vec->N;

  if (fselections[modelchoice].fselType) {
    if ((fselections[modelchoice].outputSelIdx.enabled == NULL)&&(fselections[modelchoice].outputSelStr.names != NULL)) {
      //buildEnabledSelFromNames(vec->N, vec->fmeta);
      SMILE_IWRN(1,"feature selection map was not yet built! this is a bug!");
    } else if (fselections[modelchoice].outputSelIdx.enabled == NULL) Nft = vec->N;
  }

  // TODO: fselection by names... 
  // TODO: compute Nsel in loadSelection

  x = (struct svm_node *) malloc( (Nft + 1) * sizeof(struct svm_node));
  int j = 0; 
  /*
  for (i=0; i<vec->N; i++) {
  if ((outputSelIdx.enabled == NULL)||(Nsel<=0)) {
  x[i].index = i+1; // FIXME!!! +1 is ok??? (no!?)
  x[i].value = vec->dataF[i];
  } else {
  if (outputSelIdx.enabled[i]) {
  x[j].index = j+1; // FIXME!!! +1 is ok??? (no!?)
  x[j].value = vec->dataF[i];
  if (j0==-1) j0=i;
  j++;
  }
  }
  }
  */
  if ((fselections[modelchoice].outputSelIdx.enabled == NULL)||(fselections[modelchoice].Nsel<=0)) {
    for (i=0; i<vec->N; i++) {
      x[i].index = i+1; // FIXME!!! +1 is ok??? (no!?)
      x[i].value = (FLOAT_DMEM)(vec->dataF[i]);
    }
    x[i].index = -1;
    x[i].value = 0.0;
  } else {
    for (i=0; i<fselections[modelchoice].Nsel; i++) {
      x[i].index = i+1;
      //      printf("NAME: %s\n",reader->getElementName(outputSelIdx.map[i]));
      if ( (fselections[modelchoice].outputSelIdx.map[i] < vec->N)&&(fselections[modelchoice].outputSelIdx.map[i] >= 0) ) 
        x[i].value = (FLOAT_DMEM)(vec->dataF[fselections[modelchoice].outputSelIdx.map[i]]);
      else 
        x[i].value = 0.0;
    }
    x[i].index = -1;
    x[i].value = 0.0;
  }

  if (scale[modelchoice] != NULL) {
    svm_apply_scale(scale[modelchoice],x);

    if (forceScale) {
      // clip values??
      i=0;
      while(1) {
        if (x[i].index == -1) { break; }
        else {
          if (x[i].value > scale[modelchoice]->upper) { x[i].value = scale[modelchoice]->upper; }
          else if (x[i].value < scale[modelchoice]->lower) { x[i].value = scale[modelchoice]->lower; }
        }
        i++;
      }
    }

  }

  /*
  for (i=0; i<vec->n; i++) {
  printf("%i:%f ",i,x[i].value);
  }
  printf("\n");
  */
  long vi = vec->tmeta->vIdx;
  double tm = vec->tmeta->smileTime;
  double dur = vec->tmeta->lengthSec;
  int isFinal = vec->tmeta->metadata.iData[0];

  if ( (predictProbability) && (svmType==C_SVC || svmType==NU_SVC) ) {
    v = svm_predict_probability(model[modelchoice],x,probEstimates);
    processResult(t, vi, tm, (FLOAT_DMEM)v, probEstimates, nClasses, dur, isFinal);
    //    printf("%g",v);
    //    for(j=0;j<nr_class;j++)
    //      printf(" %g",prob_estimates[j]);
    //    printf("\n");
  } else {
    v = svm_predict(model[modelchoice],x);
    processResult(t, vi, tm, (FLOAT_DMEM)v, NULL, nClasses, dur, isFinal);
    //    result = v;
    //    printf("%g\n",v);
  }
  free(x);

  /*
  if (svm_type==NU_SVR || svm_type==EPSILON_SVR)
  {
  printf("Mean squared error = %g (regression)\n",error/total);
  printf("Squared correlation coefficient = %g (regression)\n",
  ((total*sumvy-sumv*sumy)*(total*sumvy-sumv*sumy))/
  ((total*sumvv-sumv*sumv)*(total*sumyy-sumy*sumy))
  );
  }
  else
  printf("Accuracy = %g%% (%d/%d) (classification)\n",
  (double)correct/total*100,correct,total);
  */




  // tick success
  return 1;
}

int cLibsvmLiveSink::processComponentMessage( cComponentMessage *_msg )
{
  if (isMessageType(_msg,"KeyClassforChord"))  { // <- special message for ADMIRE
    modelchoice = (_msg->intData[0]);
  } else if (isMessageType(_msg,"svmSinkSetModel"))  { // choose current SVM model by index // TODO: choose by name
    modelchoice = (_msg->intData[0]);
  }

  return 0;
}

cLibsvmLiveSink::~cLibsvmLiveSink()
{
  for (int i=0;i<nMdls;i++)
  {
    svm_destroy_model(model[i]);
    svm_destroy_scale(scale[i]);
    if (modelarray[i]!=NULL) free(modelarray[i]);
    if (scalearray[i]!=NULL) free(scalearray[i]);
    if (classesarray[i]!=NULL) free(classesarray[i]);
  }


  for (int i=0;i<nMdls*nCls;i++)
  {
    if (classNames[i]!=NULL) free(classNames[i]);
  }



  if(modelarray!=NULL) free(modelarray);
  if(scalearray!=NULL) free(scalearray);
  if (classesarray!=NULL) free(classesarray);
  if (classNames!=NULL) free(classNames);


  if ((predictProbability)&&(probEstimates!=NULL)) free(probEstimates);
  if (labels != NULL) free(labels);

  if (fselections != NULL) {
    for (int i=0;i<nMdls;i++)
    {

      if (fselections[i].outputSelIdx.enabled != NULL) { 
        free(fselections[i].outputSelIdx.enabled);
      }
      if (fselections[i].outputSelIdx.map != NULL) { 
        free(fselections[i].outputSelIdx.map);
      }
      int n;
      if (fselections[i].outputSelStr.names != NULL) {
        for(n=0; n<fselections[i].outputSelStr.n; n++) {
          if (fselections[i].outputSelStr.names[n] != NULL) free(fselections[i].outputSelStr.names[n]);
        }                             
        free( fselections[i].outputSelStr.names );
      }

    }
    free(fselections);
  }

  /*if (classNames!=NULL) {
    int n;
    for (n=0; n<nCls; n++) {
      if (classNames[n] != NULL) free(classNames[n]);
    }
    free(classNames);
  }*/
}


/**************************************************************************/
/*********              LibSVM   addon:   scale functions  ****************/
/**************************************************************************/

#include <float.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

#ifndef __WINDOWS
#define max(x,y) (((x)>(y))?(x):(y))
#define min(x,y) (((x)<(y))?(x):(y))
#endif

/*
struct svm_scale {
int max_index;
double lower,upper;
double y_lower,y_upper;
double y_min,y_max;
double *feature_max;
double *feature_min;
};
*/
char *line = NULL;
int max_line_len = 1024;

char* readline(FILE *input)
{
  int len;

  if (line == NULL) line = (char *) calloc(1, max_line_len*sizeof(char));

  if(fgets(line,max_line_len,input) == NULL)
    return NULL;

  while(strrchr(line,'\n') == NULL)
  {
    max_line_len *= 2;
    line = (char *) realloc(line, max_line_len);
    len = (int) strlen(line);
    if(fgets(line+len,max_line_len-len,input) == NULL)
      break;
  }
  return line;
}

struct svm_scale * svm_load_scale(const char* restore_filename)
{

  if (restore_filename==NULL) { return NULL; }

  int idx, c;
  FILE *fp_restore = NULL;
  struct svm_scale *ret = NULL;
  double fmin, fmax;
  double y_max = -DBL_MAX;
  double y_min = DBL_MAX;

  fp_restore = fopen(restore_filename,"r");
  if(fp_restore==NULL)
  {
    fprintf(stderr,"can't open scale file %s\n", restore_filename);
    return NULL;
  }

  c = fgetc(fp_restore);
  if(c == 'y')
  {
    readline(fp_restore);
    readline(fp_restore);
    readline(fp_restore);
  }
  readline(fp_restore);
  readline(fp_restore);

  ret = (struct svm_scale *) calloc(1, sizeof(struct svm_scale) );
  if (ret == NULL)
  {
    fprintf(stderr,"Error allocating memory!\n");
    return NULL;
  }

  while(fscanf(fp_restore,"%d %*f %*f\n",&idx) == 1)
    ret->max_index = max(idx,ret->max_index);

  rewind(fp_restore);


  ret->feature_max = (double *)calloc(1,(ret->max_index+1)* sizeof(double));
  ret->feature_min = (double *)calloc(1,(ret->max_index+1)* sizeof(double));
  ret->feature_min[0] = 0.0;
  ret->feature_max[0] = 0.0;

  if((c = fgetc(fp_restore)) == 'y')
  {
    fscanf(fp_restore, "%lf %lf\n", &(ret->y_lower), &(ret->y_upper));
    fscanf(fp_restore, "%lf %lf\n", &(ret->y_min), &(ret->y_max));
    ret->y_scaling = 1;
  }
  else {
    ungetc(c, fp_restore);
    ret->y_scaling = 0;
  }

  ret->lower = -1.0;
  ret->upper = 1.0;

  if (fgetc(fp_restore) == 'x') {
    fscanf(fp_restore, "%lf %lf\n", &(ret->lower), &(ret->upper));
    while(fscanf(fp_restore,"%d %lf %lf\n",&idx,&fmin,&fmax)==3)
    {
      if(idx<=ret->max_index)
      {
        ret->feature_min[idx] = fmin;
        ret->feature_max[idx] = fmax;
      }
    }
  }
  fclose(fp_restore);

  return ret;
}

void svm_destroy_scale(struct svm_scale *scale)
{
  if (scale) {
    if (scale->feature_min) free(scale->feature_min);
    if (scale->feature_max) free(scale->feature_max);
    free(scale);
  }
}

void svm_apply_scale(struct svm_scale *scale, struct svm_node * x)
{
  int i=0;
  if (scale == NULL) return;
  if (x == NULL) return;

  while(1)
  {
    if (x[i].index == -1) break;

    if (x[i].index <= scale->max_index)
    {
      int index = x[i].index;
      double value = x[i].value;

      /* skip single-valued attribute */
      if(scale->feature_max[index] == scale->feature_min[index])
      { i++; continue; }

      if(value == scale->feature_min[index])
        value = scale->lower;
      else if(value == scale->feature_max[index])
        value = scale->upper;
      else
        value = scale->lower + (scale->upper - scale->lower) *
        (value- scale->feature_min[index])/
        (scale->feature_max[index] - scale->feature_min[index]);

      x[i].value = value;

    }
    i++;
  }

}


/**************************************************************************/

