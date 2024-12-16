@echo off

echo is clearing system junk files, please wait...

TIMEOUT /T 10

del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*.%tmp%
del /f /s /q %systemdrive%\*_mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*

del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.* & rd /s /q %windir%\temp & md %windir%\temp

del /f /s /q C:\$RECYCLE.BIN\*.*
del /f /s /q D:\$RECYCLE.BIN\*.*
del /f /s /q E:\$RECYCLE.BIN\*.*

net stop wuauserv
del /f /s /q %windir%\SoftwareDistribution\Download\*.*
net start wuauserv

echo clear system garbage is complete!

TIMEOUT /T 15

shutdown.exe /r /t 00
