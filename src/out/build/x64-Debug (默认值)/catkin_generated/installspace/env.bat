@echo off
REM generated from catkin/cmake/templates/env.bat.in

if "%1"=="" (
  echo "Usage: env.bat COMMANDS"
  echo "Calling env.bat without arguments is not supported anymore. Instead spawn a subshell and source a setup file manually."
  exit 1
) else (
  call "C:/code_project/catkin_ws/src/out/install/x64-Debug (默认值)/setup.bat"
  %*
)
