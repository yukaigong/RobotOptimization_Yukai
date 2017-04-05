@echo off
set MATLAB=G:\MATLAB\R2016a
set MATLAB_ARCH=win64
set MATLAB_BIN="G:\MATLAB\R2016a\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=f_h0_RightStance_mex
set MEX_NAME=f_h0_RightStance_mex
set MEX_EXT=.mexw64
call setEnv.bat
echo # Make settings for f_h0_RightStance > f_h0_RightStance_mex.mki
echo COMPILER=%COMPILER%>> f_h0_RightStance_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> f_h0_RightStance_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> f_h0_RightStance_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> f_h0_RightStance_mex.mki
echo LINKER=%LINKER%>> f_h0_RightStance_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> f_h0_RightStance_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> f_h0_RightStance_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> f_h0_RightStance_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> f_h0_RightStance_mex.mki
echo BORLAND=%BORLAND%>> f_h0_RightStance_mex.mki
echo OMPFLAGS= >> f_h0_RightStance_mex.mki
echo OMPLINKFLAGS= >> f_h0_RightStance_mex.mki
echo EMC_COMPILER=msvc120>> f_h0_RightStance_mex.mki
echo EMC_CONFIG=optim>> f_h0_RightStance_mex.mki
"G:\MATLAB\R2016a\bin\win64\gmake" -B -f f_h0_RightStance_mex.mk
