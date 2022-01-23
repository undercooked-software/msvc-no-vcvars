@ECHO OFF

SET Platform=x86
SET SCRIPTS_PATH=%~dp0

CALL "%SCRIPTS_PATH%\setup_cl_common.bat"

SET FrameworkDir=C:\Windows\Microsoft.NET\Framework\
SET FrameworkDIR32=C:\Windows\Microsoft.NET\Framework\
SET FrameworkVersion32=v4.0.30319

CALL "%SCRIPTS_PATH%\setup_cl_finalize.bat"