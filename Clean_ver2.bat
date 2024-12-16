@echo off
REM ============================================================
REM Script: clean_temp_files.bat
REM Description: This script automates the cleanup of temporary 
REM              files and directories on a Windows system to 
REM              free up disk space and enhance performance.
REM ============================================================

echo Starting system cleanup, please wait...

REM Wait for 10 seconds before starting the cleanup
TIMEOUT /T 10

REM Delete various temporary files from the system drive
echo Deleting temporary files from system drive...
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*.%tmp%
del /f /s /q %systemdrive%\*_mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*

REM Delete various temporary files from the Windows directory
echo Deleting temporary files from Windows directory...
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.* 
rd /s /q %windir%\temp 
md %windir%\temp

REM Clear the Recycle Bin for all drives
echo Clearing Recycle Bin...
del /f /s /q C:\$RECYCLE.BIN\*.* 
del /f /s /q D:\$RECYCLE.BIN\*.* 
del /f /s /q E:\$RECYCLE.BIN\*.*

REM Stop Windows Update service, delete downloaded updates, and restart the service
echo Cleaning up Windows Update files...
net stop wuauserv
del /f /s /q %windir%\SoftwareDistribution\Download\*.*
net start wuauserv

REM Clear user-specific temporary files
echo Deleting user-specific temporary files...
del /f /s /q "%USERPROFILE%\AppData\Local\Temp\*"

REM Clear temporary internet files
echo Deleting temporary internet files...
rd /s /q "%LocalAppData%\Microsoft\Windows\INetCache"

REM Clear system temporary files
echo Deleting system temporary files...
del /q /s %TEMP%\*

REM Cleanup complete message
echo System cleanup is complete!

REM Wait for 15 seconds before restarting the system
TIMEOUT /T 15

REM Restart the system
shutdown.exe /r /t 00