@echo off
echo Checking network connection...
ping google.com -n 4

echo Tracing network route...
tracert google.com

echo Displaying open network connections...
netstat -an

echo Displaying network adapter details...
ipconfig /all

echo Saving results to network_report.txt...
(
    echo ==== Network Test Results ====
    echo.
    echo == Ping Test ==
    ping google.com -n 4
    echo.
    echo == Traceroute ==
    tracert google.com
    echo.
    echo == Open Network Connections ==
    netstat -an
    echo.
    echo == Network Adapter Details ==
    ipconfig /all
) > network_report.txt

echo Task completed. Data saved in network_report.txt.
pause
1