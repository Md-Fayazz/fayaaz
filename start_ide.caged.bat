@echo off

ECHO ###################################################
ECHO          CREATING CAGED ENVIRONMENT 
ECHO ###################################################
if not exist ".build" (
	mkdir .build
)
call .env/conan.jailed.env.bat >> .build/package_installations.log

SET CONAN_USER_HOME=%cd%
SET CONAN_USE_ALWAYS_SHORT_PATHS=True
SET CONAN_USER_HOME_SHORT=%CONAN_USER_HOME%/.short
SET GTEST_OUTPUT=xml
REM SET VSEXT=Tools/vscode/extensions.py

cd .build
call ../remotes.bat >> ../.build/package_installations.log
echo Installing Build Tools/Packages from Artifactory..
conan install --profile default ../build_tools.txt >> ../.build/package_installations.log
echo Activating Environment!
call activate.bat

REM python ../%VSEXT%
code .. | exit
