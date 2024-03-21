@echo off

ECHO ###################################################
ECHO          ACTIVATING BUILD ENVIRONMENT 
ECHO ###################################################
if not exist ".build" (
	mkdir .build
)
call .env/conan.environment.bat >> .build/package_installations.log
REM SET vsextention=Tools/vscode/extensions.py
SET GTEST_OUTPUT=xml

cd .build
call ../remotes.bat >> .build/package_installations.log

echo Installing Build Tools/Packages from Artifactory..

conan install --profile default ../build_tools.txt >> .build/package_installations.log

echo Activating Environment!

call activate.bat
REM python ../%vsextention%

code .. | exit
