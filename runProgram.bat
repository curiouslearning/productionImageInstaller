@echo off
cls

echo Checking PATH...

::Check for Java
java 2> NUL
if not %ERRORLEVEL%==9009 (
echo Java is installed
) else (
cls
echo Java is not installed!  Please go to java.com to download and install before proceeding.
PAUSE
Exit
)

set startingDir=%CD%
cd ..\ADB
SET "adbDir=;%CD%"
set adbDir=%adbDir: =-%

cd ..\Git
SET "gitDir=;%CD%"
set gitDir=%gitDir: =-%

cd %startingDir%

set appendString= 

::Check if git is already in the path
git --version 2> NUL
if not %ERRORLEVEL%==9009 (
echo git exists in path
) else (
set "appendString=%appendString%%gitDir%
)

::Check if adb is already in the path
adb 2> NUL
if not %ERRORLEVEL%==9009 (
echo adb exists in path
) else (
set "appendString=%appendString%%adbDir%
)
set PATH=%PATH%%appendString%

echo PATH has been updated.  Starting git pull

git pull 

echo Completed git pull
echo Starting program
java -jar ImageInstaller.jar

echo Goodbye
