@ECHO OFF

SET "LIB="

SET VC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community
SET VC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional

SET VC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools
IF NOT DEFINED LIB (IF EXIST "%VC_PATH%" (CALL "%VC_PATH:~47,15%\setup_cl_%1"))