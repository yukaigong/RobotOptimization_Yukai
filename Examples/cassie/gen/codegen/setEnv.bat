set COMPILER=cl 
				set COMPFLAGS=/c /Zp8 /GR /W3 /EHs /nologo /MD /D_CRT_SECURE_NO_DEPRECATE /D_SCL_SECURE_NO_DEPRECATE /D_SECURE_SCL=0   /DMATLAB_MEX_FILE  /DMATLAB_MEX_FILE 
				set OPTIMFLAGS=/O2 /Oy- /DNDEBUG 
				set DEBUGFLAGS=/Z7 
				set LINKER=link 
				set LINKFLAGS=/nologo /manifest  /export:%ENTRYPOINT% /DLL /LIBPATH:"G:\MATLAB\R2016a\extern\lib\win64\microsoft" libmx.lib libmex.lib libmat.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /EXPORT:mexFunction 
				set LINKDEBUGFLAGS=/debug /PDB:"%OUTDIR%%MEX_NAME%.mexw64.pdb" 
				set NAME_OUTPUT=/out:"%OUTDIR%%MEX_NAME%%MEX_EXT%"
set PATH=G:\Microsoft Visual Studio 12.0\VC\Bin\amd64;G:\Microsoft Visual Studio 12.0\VC\Bin\VCPackages;G:\Microsoft Visual Studio 12.0\VC\..\Common7\IDE;G:\Microsoft Visual Studio 12.0\VC\..\Common7\Tools;G:\Windows Kits\8.1\\Bin\x64;G:\Windows Kits\8.1\\Bin\x86;;%MATLAB_BIN%;%PATH%
set INCLUDE=G:\Microsoft Visual Studio 12.0\VC\INCLUDE;G:\Microsoft Visual Studio 12.0\VC\ATLMFC\INCLUDE;G:\Windows Kits\8.1\\include\shared;G:\Windows Kits\8.1\\include\um;G:\Windows Kits\8.1\\include\winrt;G:\MATLAB\R2016a\extern\include;%INCLUDE%
set LIB=G:\Microsoft Visual Studio 12.0\VC\Lib\amd64;G:\Microsoft Visual Studio 12.0\VC\ATLMFC\Lib\amd64;G:\Windows Kits\8.1\\lib\winv6.3\um\x64;G:\MATLAB\R2016a\lib\win64;%LIB%
set LIBPATH=G:\Microsoft Visual Studio 12.0\VC\Lib\amd64;G:\Microsoft Visual Studio 12.0\VC\ATLMFC\Lib\amd64;%LIBPATH%
