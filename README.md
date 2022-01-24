## What does this project mean by no-vcvars?
We grab all the environment variables modified by `vcvars___.bat` of which is ran from command-line based on the specified build architecture for your project. `vcvars___.bat` sets up the build environment and the compiler toolset of your choice. You can see the following [link](https://docs.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=msvc-160) for more details about those files.

The most important part to know is that avoiding having to invoke these files every time you compile prevents a lot of compile downtime due to the initialization of it.

## What MSVC compiler toolsets does this support?
As of right now, this project supports the following:
  * MSVC v140 - VS 2015 C++ Build Tools (v14.00)[^1]
  * VC++ 2017 version 15.9 v14.16 latest v141 tools[^2]
  * MSVC v142 - VS 2019 C++ x64/x86 Build Tools (Latest)
  * [MSVC v143 - VS 2022 C++ x64/x86 Build Tools](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2022) (Latest)

## How do I use this? 
This project is built as a CLI supplement, so it's assumed you're using it in parallel with such a process. All you have to do is invoke the batch script prior to whatever your compilation process is. Please reference the `build_example.bat` file within the `tests` directory for an example of how to use it.

When utilizing from within another Batch script, it is best to run it within a `SETLOCAL/ENDLOCAL` scope to prevent environment variable pollution.

[^1]: The toolchain version implemented was installed from the 2022 Visual Studio Build Tools individual components list.
[^2]: This is the actual name as seen in the 2017 Visual Studio Build Tools individual components list.
