@echo off

cmd /c conan remote add test-conan-local https://addevops.jfrog.io/artifactory/api/conan/test-conan-local --force --insert=0
cmd /c conan user -p cmVmdGtuOjAxOjE3NDI0NjA5NTY6U1A0QmFwY2dWZGVIWGJPMmRwMzNyZnRXVHE3 -r test-conan-local hussain.shaikh@a-devops.com
