@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure to pack and Upload Package to Steam(Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

@echo on

ContentBuilder\builder\steamcmd.exe +login theArkitect_2022 vsPCRoKnZLeq}Av2 +run_app_build %~dp0\BuildScripts\root_demo_app_build.vdf +quit
PAUSE

:END
endlocal