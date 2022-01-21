@ECHO OFF

:: We don't want this file called directly, so we'll check to see that Platform is defined.
IF NOT DEFINED Platform GOTO :EOF
IF /i NOT "%Platform%" == "x64" IF /i NOT "%Platform%" == "x86" GOTO :EOF

SET DevEnvDir=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\
SET ExtensionSdkDir=C:\Program Files (x86)\Microsoft SDKs\Windows Kits\10\ExtensionSDKs
SET Framework40Version=v4.0
SET FrameworkDir=C:\Windows\Microsoft.NET\Framework\
SET FrameworkVersion=v4.0.30319

SET INCLUDE=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.30.30705\include;C:\Program Files (x86)\Windows Kits\10\include\10.0.20348.0\ucrt;C:\Program Files (x86)\Windows Kits\10\include\10.0.20348.0\shared;C:\Program Files (x86)\Windows Kits\10\include\10.0.20348.0\um;C:\Program Files (x86)\Windows Kits\10\include\10.0.20348.0\winrt;C:\Program Files (x86)\Windows Kits\10\include\10.0.20348.0\cppwinrt

SET LIBPATH=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.30.30705\lib\x86\store\references;C:\Program Files (x86)\Windows Kits\10\UnionMetadata\10.0.20348.0;C:\Program Files (x86)\Windows Kits\10\References\10.0.20348.0;

IF NOT DEFINED __VSCMD_PREINIT_PATH SET __VSCMD_PREINIT_PATH=%Path%
SET __VSCMD_AGGREGATE_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\MSBuild\Current\bin\Roslyn;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\MSBuild\Current\Bin\amd64;%FrameworkDir%v4.0.30319;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\;%__VSCMD_PREINIT_PATH%

SET UCRTVersion=10.0.20348.0
SET UniversalCRTSdkDir=C:\Program Files (x86)\Windows Kits\10\

SET VCIDEInstallDir=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\VC\
SET VCINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\
SET VCToolsInstallDir=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.30.30705\
SET VCToolsRedistDir=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Redist\MSVC\14.30.30704\
SET VCToolsVersion=14.30.30705
SET VisualStudioVersion=17.0

SET VS170COMNTOOLS=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\
SET VSCMD_ARG_app_plat=Desktop
SET VSCMD_VER=17.0.2
SET VSINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\

SET WindowsLibPath=C:\Program Files (x86)\Windows Kits\10\UnionMetadata\10.0.20348.0;C:\Program Files (x86)\Windows Kits\10\References\10.0.20348.0
SET WindowsSdkBinPath=C:\Program Files (x86)\Windows Kits\10\bin\
SET WindowsSdkDir=C:\Program Files (x86)\Windows Kits\10\
SET WindowsSDKLibVersion=10.0.20348.0\
SET WindowsSdkVerBinPath=C:\Program Files (x86)\Windows Kits\10\bin\10.0.20348.0\
SET WindowsSDKVersion=10.0.20348.0\
