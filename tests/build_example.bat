@ECHO OFF
SETLOCAL
  REM Normalize and return the fully qualified path of the novcvars directory.
  CALL :NORMALIZEPATH "C:\dev_tools\bin\msvc-no-vcvars"
  
  REM Run our setup locally at the returned path and then return to CWD.
  PUSHD %RETVAL%
    CALL "setup_cl_generic.bat" x64
  POPD
  
  REM Provide your MSVC compilation process below.
  CL
ENDLOCAL

:: ========== FUNCTIONS ==========
EXIT /B

:NORMALIZEPATH
  SET RETVAL=%~f1
  GOTO :EOF