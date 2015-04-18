#!/bin/sh

Pwd=`pwd`;

if [ "$1" != "" ]; then
  INSTPREFIX=$1;
else
  INSTPREFIX="$Pwd/inst";
fi

./autogen.sh ;
./autogen.sh ;
mkdir inst
## DEBUG version:
#export CXXFLAGS="-O0 -mfpmath=sse -march=native"
#export CFLAGS="-O0 -mfpmath=sse -march=native"
#export CPPFLAGS="-D_DEBUG -g"
## non-debug flags:
export CXXFLAGS="-O2 -mfpmath=sse -march=native"
export CFLAGS="-O2 -mfpmath=sse -march=native"


#export CXXFLAGS="-O2 -mfpmath=sse -mtune=athlon64"
#export CFLAGS="-O2 -mfpmath=sse -mtune=athlon64"
#./configure --prefix=$Pwd/inst --enable-static --disable-shared &&
./configure --prefix=$INSTPREFIX --enable-static --enable-shared=no
if [ $? != 0 ]; then
  echo "failed to configure openSMILE!";
  exit -1;
fi


make clean &&
make -j8 ; make install 
if [ $? != 0 ]; then
  echo "failed to build or install openSMILE to '$INSTPREFIX'!";
  exit -1;
fi


echo ""
echo "build successfull. You can now use the inst/bin/SMILExtract binary."
echo ""

