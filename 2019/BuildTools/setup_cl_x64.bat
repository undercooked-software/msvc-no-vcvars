@ECHO OFF

SET Platform=x64
SET SCRIPTS_PATH=%~dp0

CALL "%SCRIPTS_PATH%\setup_cl_common.bat"

SET FrameworkDir64=C:\Windows\Microsoft.NET\Framework64\
SET FrameworkVersion64=v4.0.30319
SET __DOTNET_ADD_64BIT=1
SET __DOTNET_PREFERRED_BITNESS=64

SET __VSCMD_AGGREGATE_PATH=C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6.1 Tools\%Platform%\;%__VSCMD_AGGREGATE_PATH%

CALL "%SCRIPTS_PATH%\setup_cl_finalize.bat"
