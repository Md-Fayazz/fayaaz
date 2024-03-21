@echo off

if not exist ".conan" (
	xcopy ".env/conan" "./.conan" /s /e /y /I
)