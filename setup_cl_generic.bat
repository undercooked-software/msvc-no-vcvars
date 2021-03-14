@ECHO OFF

SET "LIB="

:: SET VC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community
:: SET VC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional

:: I mainly work in a command-line environment nowadays, so I only configured this to utilize the build tools version of VS2019.
SET VC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools
IF NOT DEFINED LIB (
  IF EXIST "%VC_PATH%" (
    REM %VC_PATH:~47,15% crops "2019\BuildTools" from VC_PATH since that is our directory path naming convention for this project.
    CALL "%VC_PATH:~47,15%\setup_cl_%1"
  )
)