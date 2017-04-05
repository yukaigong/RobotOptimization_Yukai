@echo off
set MATLAB=G:\MATLAB\R2016a
set MATLAB_ARCH=win64
set MATLAB_BIN="G:\MATLAB\R2016a\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=f_stepLength_LeftStance_mex
set MEX_NAME=f_stepLength_LeftStance_mex
set MEX_EXT=.mexw64
call setEnv.bat
echo # Make settings for f_stepLength_LeftStance > f_stepLength_LeftStance_mex.mki
echo COMPILER=%COMPILER%>> f_stepLength_LeftStance_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> f_stepLength_LeftStance_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> f_stepLength_LeftStance_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> f_stepLength_LeftStance_mex.mki
echo LINKER=%LINKER%>> f_stepLength_LeftStance_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> f_stepLength_LeftStance_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> f_stepLength_LeftStance_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> f_stepLength_LeftStance_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> f_stepLength_LeftStance_mex.mki
echo BORLAND=%BORLAND%>> f_stepLength_LeftStance_mex.mki
echo OMPFLAGS= >> f_stepLength_LeftStance_mex.mki
echo OMPLINKFLAGS= >> f_stepLength_LeftStance_mex.mki
echo EMC_COMPILER=msvc120>> f_stepLength_LeftStance_mex.mki
echo EMC_CONFIG=optim>> f_stepLength_LeftStance_mex.mki
"G:\MATLAB\R2016a\bin\win64\gmake" -B -f f_stepLength_LeftStance_mex.mk
