@ECHO OFF
SETLOCAL
::
PUSHD "../"
CALL "setup_cl_generic.bat" x64
POPD

CL
::
ENDLOCAL