@ECHO OFF

SET Platform=x64
SET SCRIPTS_PATH=%~dp0

CALL "%SCRIPTS_PATH%\setup_cl_common.bat"

SET FrameworkDir=C:\Windows\Microsoft.NET\Framework64\
SET FrameworkDIR64=C:\Windows\Microsoft.NET\Framework64\
SET FrameworkVersion64=v4.0.30319

CALL "%SCRIPTS_PATH%\setup_cl_finalize.bat"
