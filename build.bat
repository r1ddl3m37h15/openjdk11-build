@echo on
echo %COMPUTERNAME%
echo %USERDOMAIN% %USERNAME%
echo %CD%

docker build --tag "r1ddl3m37h15/openjdk11-build:latest" .
if ERRORLEVEL 1 exit /b 1

docker image ls
if ERRORLEVEL 1 exit /b 1

call test.bat
if ERRORLEVEL 1 exit /b 1
