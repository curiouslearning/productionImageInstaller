@echo off
cls

echo Updating initializeProgram.bat
cp initializeProgram.bat ..

echo Checking Path for ADB...

set startingDir=%CD%
cd ..\ADB
SET "adbDir=;%CD%"
:: set adbDir=%adbDir: =-%

cd %startingDir%

set appendString= 

::Check if adb is already in the path
adb 2> NUL
if not %ERRORLEVEL%==9009 (
echo adb exists in path
) else (
set "appendString=%adbDir%"
set PATH=%PATH%%appendString%
echo PATH has been updated
)

echo Starting program

java -jar ImageInstaller.jar

echo Goodbye
pause