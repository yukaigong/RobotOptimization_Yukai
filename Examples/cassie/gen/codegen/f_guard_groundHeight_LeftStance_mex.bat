@echo off
set MATLAB=G:\MATLAB\R2016a
set MATLAB_ARCH=win64
set MATLAB_BIN="G:\MATLAB\R2016a\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=f_guard_groundHeight_LeftStance_mex
set MEX_NAME=f_guard_groundHeight_LeftStance_mex
set MEX_EXT=.mexw64
call setEnv.bat
echo # Make settings for f_guard_groundHeight_LeftStance > f_guard_groundHeight_LeftStance_mex.mki
echo COMPILER=%COMPILER%>> f_guard_groundHeight_LeftStance_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> f_guard_groundHeight_LeftStance_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> f_guard_groundHeight_LeftStance_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> f_guard_groundHeight_LeftStance_mex.mki
echo LINKER=%LINKER%>> f_guard_groundHeight_LeftStance_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> f_guard_groundHeight_LeftStance_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> f_guard_groundHeight_LeftStance_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> f_guard_groundHeight_LeftStance_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> f_guard_groundHeight_LeftStance_mex.mki
echo BORLAND=%BORLAND%>> f_guard_groundHeight_LeftStance_mex.mki
echo OMPFLAGS= >> f_guard_groundHeight_LeftStance_mex.mki
echo OMPLINKFLAGS= >> f_guard_groundHeight_LeftStance_mex.mki
echo EMC_COMPILER=msvc120>> f_guard_groundHeight_LeftStance_mex.mki
echo EMC_CONFIG=optim>> f_guard_groundHeight_LeftStance_mex.mki
"G:\MATLAB\R2016a\bin\win64\gmake" -B -f f_guard_groundHeight_LeftStance_mex.mk
