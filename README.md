## What does this project mean by no-vcvars?
We grab all the environment variables modified by **vcvars___.bat** of which is ran from command-line based on the specified build architecture for your project. **vcvars___.bat** sets up the build environment and the compiler toolset of your choice. You can see the following [link](https://docs.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=msvc-160) for more details about those files.

The most important part to know is that avoiding having to invoke these files every time you compile prevents a lot of compile downtime due to the initialization of it.

## What MSVC compiler toolsets does this support?
As of right now, this project supports the following:
  * [MSVC v142 - VS 2019 C++ x64/x86 Build Tools](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2019)

## How do I use this? 
This project is built as a CLI supplement, so it's assumed you're using it in parallel with such a process. All you have to do is invoke the batch script prior to whatever your compilation process is. Whether you put it somewhere close to the project or separate it and add it to PATH doesnt particularly matter.

When utilizing from within another Batch script, it is best to run it within a `SETLOCAL/ENDLOCAL` scope to prevent environment variable pollution.
