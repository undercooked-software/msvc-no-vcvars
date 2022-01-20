@ECHO OFF

SET "LIB="

:: SET VC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2022\Community
:: SET VC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2022\Professional

SET VC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools
IF NOT DEFINED LIB (
  IF EXIST "%VC_PATH%" (
    REM %VC_PATH:~47,15% crops "2022\BuildTools" from VC_PATH since that is our directory path naming convention for this project.
    CALL "%VC_PATH:~47,15%\setup_cl_%1"
  )
)

:: SET VC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community
:: SET VC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional

SET VC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools
IF NOT DEFINED LIB (
  IF EXIST "%VC_PATH%" (
    REM %VC_PATH:~47,15% crops "2019\BuildTools" from VC_PATH since that is our directory path naming convention for this project.
    CALL "%VC_PATH:~47,15%\setup_cl_%1"
  )
)
