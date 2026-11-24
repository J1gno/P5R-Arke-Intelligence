@echo off
setlocal
set "COMPILER=%~1"
if "%COMPILER%"=="" set "COMPILER=AtlusScriptCompiler.exe"
set "SCRIPT_DIR=%~dp0"
set "OUT_DIR=%SCRIPT_DIR%..\P5REssentials\CPK\BASE.CPK\BATTLE\SCRIPT"
if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"
"%COMPILER%" -In "%SCRIPT_DIR%PLAYERAI.flow" -Out "%OUT_DIR%\PLAYERAI.BF" -Compile -OutFormat V3BE -Library P5R -Encoding P5R_EFIGS
if errorlevel 1 exit /b %errorlevel%
echo Compiled "%OUT_DIR%\PLAYERAI.BF" successfully.
