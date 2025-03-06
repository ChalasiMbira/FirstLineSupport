@echo off
echo Gathering System Information...
systeminfo > systeminfo.txt
ipconfig /all > networkinfo.txt
tasklist > runningprocesses.txt
echo Task Completed! Data saved in the current directory.
pause
