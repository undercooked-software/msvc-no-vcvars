All setup scripts should be ran within a `SETLOCAL/ENDLOCAL` scope to prevent environment variable pollution.  
Due to there being no call to VCVARS, there is no delay in initialization.