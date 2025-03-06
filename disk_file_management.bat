@echo off
echo Checking available disk space...
wmic logicaldisk get name,size,freespace

echo Displaying all files in the current directory...
dir /s /a

echo Creating a new directory called 'TestFolder'...
mkdir TestFolder

echo Changing directory to 'TestFolder'...
cd TestFolder

echo Creating a test file 'sample.txt'...
echo This is a sample file. > sample.txt

echo Listing files in 'TestFolder'...
dir

echo Task completed! Files and folders have been created.
pause
