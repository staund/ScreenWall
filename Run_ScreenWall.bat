@echo off
cd /d "%~dp0"
powershell -ExecutionPolicy Bypass -File SWall.ps1
pause