@echo off

call .env/conan.jailed.env.bat

SET CONAN_USER_HOME=%cd%
SET CONAN_USE_ALWAYS_SHORT_PATHS=True
SET CONAN_USER_HOME_SHORT=%CONAN_USER_HOME%/.short
SET GTEST_OUTPUT=xml

if not exist ".build" (
	mkdir .build
)
cd .build
call ../remotes.bat

conan install --profile default ../build_tools.txt
call activate.bat

echo "cmake .. -G \"MinGW Makefiles\""
cmake .. -G "MinGW Makefiles"

echo "cmake --build . --target all"
cmake --build . --target all
