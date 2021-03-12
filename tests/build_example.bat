@ECHO OFF
SETLOCAL
::

### Our setup_cl_generic.bat happens to be in the directory above the test dir.
### Optimally it should be added to PATH somehow for proper use, or bundled with projects (bin directory).
PUSHD "../"
CALL "setup_cl_generic.bat" x64
POPD

### YOUR MSVC COMPILATION PROCESS HERE
CL
::
ENDLOCAL