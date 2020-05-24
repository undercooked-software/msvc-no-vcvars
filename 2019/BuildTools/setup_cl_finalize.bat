@ECHO OFF

REM "If VisualStudioVersion is defined, we can assume a stale setup of vcvarsall.bat is in place, or our setup_cl_common.bat was successful."
IF NOT DEFINED VisualStudioVersion GOTO :EOF
REM "If VisualStudioVersion is not 16.0, we have incorrect toolchain information."
IF NOT "%VisualStudioVersion%" == "16.0" GOTO :EOF

REM "Stop file execution in the event that setup_cl_common.bat hasn't been ran."
IF NOT DEFINED __VSCMD_AGGREGATE_PATH GOTO :EOF

SET VSCMD_ARG_HOST_ARCH=%Platform%
SET VSCMD_ARG_TGT_ARCH=%Platform%

SET LIB=C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Tools\MSVC\14.25.28610\lib\%Platform%;C:\Program Files (x86)\Windows Kits\NETFXSDK\4.6.1\lib\um\%Platform%;C:\Program Files (x86)\Windows Kits\10\lib\10.0.18362.0\ucrt\%Platform%;C:\Program Files (x86)\Windows Kits\10\lib\10.0.18362.0\um\%Platform%;

SET LIBPATH=%LIBPATH%C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Tools\MSVC\14.25.28610\lib\%Platform%;

SET Path=C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Tools\MSVC\14.25.28610\bin\Host%Platform%\%Platform%;C:\Program Files (x86)\Windows Kits\10\bin\10.0.18362.0\%Platform%;C:\Program Files (x86)\Windows Kits\10\bin\%Platform%;%__VSCMD_AGGREGATE_PATH%