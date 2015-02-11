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
Pause
Exit
)

::Check for git
git --version 2> NUL
if not %ERRORLEVEL%==9009 (
echo git exists in path
) else (
echo Git is not installed or in the system path.  Aborting!
Pause
Exit
)

::Pull latest source files then start the program
cd productionImageInstaller

echo Stashing local changes
git stash
echo Done stashing local changes
sleep 1

echo Updating...
git pull
echo Done updating...
sleep 1

echo Starting the program
call runProgram.bat

