@echo off
set MATLAB=G:\MATLAB\R2016a
set MATLAB_ARCH=win64
set MATLAB_BIN="G:\MATLAB\R2016a\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=f_yawCost_LeftStance_mex
set MEX_NAME=f_yawCost_LeftStance_mex
set MEX_EXT=.mexw64
call setEnv.bat
echo # Make settings for f_yawCost_LeftStance > f_yawCost_LeftStance_mex.mki
echo COMPILER=%COMPILER%>> f_yawCost_LeftStance_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> f_yawCost_LeftStance_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> f_yawCost_LeftStance_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> f_yawCost_LeftStance_mex.mki
echo LINKER=%LINKER%>> f_yawCost_LeftStance_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> f_yawCost_LeftStance_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> f_yawCost_LeftStance_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> f_yawCost_LeftStance_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> f_yawCost_LeftStance_mex.mki
echo BORLAND=%BORLAND%>> f_yawCost_LeftStance_mex.mki
echo OMPFLAGS= >> f_yawCost_LeftStance_mex.mki
echo OMPLINKFLAGS= >> f_yawCost_LeftStance_mex.mki
echo EMC_COMPILER=msvc120>> f_yawCost_LeftStance_mex.mki
echo EMC_CONFIG=optim>> f_yawCost_LeftStance_mex.mki
"G:\MATLAB\R2016a\bin\win64\gmake" -B -f f_yawCost_LeftStance_mex.mk
