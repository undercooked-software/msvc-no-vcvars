@ECHO OFF

:: We don't want this file called directly, so we'll check to see that Platform is defined.
IF NOT DEFINED Platform GOTO :EOF
IF /i NOT "%Platform%" == "x64" IF /i NOT "%Platform%" == "x86" GOTO :EOF

SET DevEnvDir=C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\
SET Framework40Version=v4.0
SET FrameworkDir=C:\Windows\Microsoft.NET\Framework\
SET FrameworkVersion=v4.0.30319

SET INCLUDE=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\INCLUDE;C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\ATLMFC\INCLUDE;C:\Program Files (x86)\Windows Kits\10\include\10.0.20348.0\ucrt;C:\Program Files (x86)\Windows Kits\10\include\10.0.20348.0\shared;C:\Program Files (x86)\Windows Kits\10\include\10.0.20348.0\um;C:\Program Files (x86)\Windows Kits\10\include\10.0.20348.0\winrt;

SET LIBPATH=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\LIB;C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\ATLMFC\LIB;C:\Program Files (x86)\Windows Kits\10\UnionMetadata;C:\Program Files (x86)\Windows Kits\10\References;\Microsoft.VCLibs\14.0\References\CommonConfiguration\neutral;

IF NOT DEFINED __VSCMD_PREINIT_PATH SET __VSCMD_PREINIT_PATH=%Path%
SET __VSCMD_AGGREGATE_PATH=C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\;C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\BIN;C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools;%FrameworkDir%v4.0.30319;%__VSCMD_PREINIT_PATH%

SET UCRTVersion=10.0.20348.0
SET UniversalCRTSdkDir=C:\Program Files (x86)\Windows Kits\10\

SET VCINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\
SET VisualStudioVersion=14.0
SET VS140COMNTOOLS=C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\
SET VSINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio 14.0\

SET WindowsLibPath=C:\Program Files (x86)\Windows Kits\10\UnionMetadata;C:\Program Files (x86)\Windows Kits\10\References
SET WindowsSdkDir=C:\Program Files (x86)\Windows Kits\10\
SET WindowsSDKLibVersion=10.0.20348.0\
SET WindowsSDKVersion=10.0.20348.0\