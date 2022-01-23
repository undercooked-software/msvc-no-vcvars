@ECHO OFF

:: If VisualStudioVersion is defined, we can assume a stale setup of vcvarsall.bat is in place, or our setup_cl_common.bat was successful.
IF NOT DEFINED VisualStudioVersion GOTO :EOF
:: If VisualStudioVersion is not 14.0, we have incorrect toolchain information.
IF NOT "%VisualStudioVersion%" == "14.0" GOTO :EOF

:: Stop file execution in the event that setup_cl_common.bat hasn't been ran.
IF NOT DEFINED __VSCMD_AGGREGATE_PATH GOTO :EOF

SET LIB=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\LIB;C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\ATLMFC\LIB;C:\Program Files (x86)\Windows Kits\10\lib\10.0.20348.0\ucrt\%Platform%;C:\Program Files (x86)\Windows Kits\10\lib\10.0.20348.0\um\%Platform%;

SET LIBPATH=%LIBPATH%%FrameworkDir%v4.0.30319

SET Path=C:\Program Files (x86)\Windows Kits\10\bin\%Platform%;
IF "%Platform%" == "x64" (
  SET Path=%Path%C:\Program Files (x86)\Windows Kits\10\bin\x86;
)
SET Path=%Path%%__VSCMD_AGGREGATE_PATH%