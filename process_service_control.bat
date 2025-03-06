@echo off
echo Listing all running processes...
tasklist

echo Checking if Notepad is running...
tasklist | findstr /I "notepad.exe"

echo Attempting to close Notepad if running...
taskkill /IM notepad.exe /F

echo Displaying all system services...
sc query state= all

echo Checking status of Windows Update service...
sc query wuauserv

echo Stopping Windows Update service (if running)...
net stop wuauserv

echo Starting Windows Update service...
net start wuauserv

echo Task completed! Process and service operations executed.
pause
