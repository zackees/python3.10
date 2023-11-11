# python3.10 installers

Python 3.10 installers are getting harder to find. Here are the ones for Windows and Mac.

Direct download for 3.10.10 for:
  * [windows](https://github.com/zackees/python3.10/raw/main/win/python-3.10.10-amd64.exe)
  * [mac os (m1/x86)](https://github.com/zackees/python3.10/raw/main/macos/python-3.10.10-macos11.pkg)
    
Windows auto checkbox:
```
python-3.10.0.exe /quiet InstallAllUsers=1 PrependPath=1
```

Batch script to set the PATH correctly, which python does not do:

```
@echo off
SET url=https://github.com/zackees/python3.10/raw/main/win/python-3.10.10-amd64.exe
SET filename=python-3.10.10-amd64.exe

echo Downloading Python 3.10.10...
certutil -urlcache -split -f %url% %filename%

echo Installing Python 3.10.10...
start /wait %filename% /quiet InstallAllUsers=1 PrependPath=1

echo Installation complete.
```
