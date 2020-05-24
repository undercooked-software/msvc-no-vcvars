@ECHO OFF

SET Platform=x86
SET SCRIPTS_PATH=%~dp0

CALL "%SCRIPTS_PATH%\setup_cl_common.bat"

SET FrameworkDir32=C:\Windows\Microsoft.NET\Framework\
SET FrameworkVersion32=v4.0.30319
SET __DOTNET_ADD_32BIT=1
SET __DOTNET_PREFERRED_BITNESS=32

SET __VSCMD_AGGREGATE_PATH=C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6.1 Tools\;%__VSCMD_AGGREGATE_PATH%

CALL "%SCRIPTS_PATH%\setup_cl_finalize.bat"