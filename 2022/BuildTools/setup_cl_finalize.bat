@ECHO OFF

:: If VisualStudioVersion is defined, we can assume a stale setup of vcvarsall.bat is in place, or our setup_cl_common.bat was successful.
IF NOT DEFINED VisualStudioVersion GOTO :EOF
:: If VisualStudioVersion is not 17.0, we have incorrect toolchain information.
IF NOT "%VisualStudioVersion%" == "17.0" GOTO :EOF

:: Stop file execution in the event that setup_cl_common.bat hasn't been ran.
IF NOT DEFINED __VSCMD_AGGREGATE_PATH GOTO :EOF

SET VSCMD_ARG_HOST_ARCH=%Platform%
SET VSCMD_ARG_TGT_ARCH=%Platform%

SET LIB=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.30.30705\lib\%Platform%;C:\Program Files (x86)\Windows Kits\10\lib\10.0.20348.0\ucrt\%Platform%;C:\Program Files (x86)\Windows Kits\10\lib\10.0.20348.0\um\%Platform%

SET LIBPATH=%LIBPATH%C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.30.30705\lib\%Platform%;%FrameworkDir%v4.0.30319

SET Path=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.30.30705\bin\Host%Platform%\%Platform%;C:\Program Files (x86)\Windows Kits\10\bin\10.0.20348.0\%Platform%;C:\Program Files (x86)\Windows Kits\10\bin\%Platform%;%__VSCMD_AGGREGATE_PATH%
