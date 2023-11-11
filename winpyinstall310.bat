@echo off
SET url=https://github.com/zackees/python3.10/raw/main/win/python-3.10.10-amd64.exe
SET filename=python-3.10.10-amd64.exe

echo Downloading Python 3.10.10...
certutil -urlcache -split -f %url% %filename%

echo Installing Python 3.10.10...
start /wait %filename% /quiet InstallAllUsers=1 PrependPath=1

echo Installation complete.
