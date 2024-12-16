# Batch Scripts for Cleaning Temporary Files

## Description

This repository contains two batch scripts, `clean_temp_files.bat` and `clean_ver2.bat`, designed to automate the cleanup of temporary files and directories on a Windows system. These scripts help users free up disk space and enhance system performance by removing unnecessary files.

## Features

### `clean_temp_files.bat`

- Deletes temporary files from the Windows Temp directory.
- Clears the Recycle Bin.
- Removes temporary internet files.
- Cleans up user-specific temporary files.
- Customizable to delete additional files or directories as per user requirements.

### `clean_ver2.bat`

- Includes all features of `clean_temp_files.bat`.
- Deletes temporary files from additional system directories.
- Cleans up Windows Update cache.
- Removes old prefetch files.
- Option to clear browser cache for popular web browsers.
- Enhanced logging for better tracking of cleanup activities.

## Usage

1. **Download the Script**: Ensure the respective batch file (`clean_temp_files.bat` or `clean_ver2.bat`) is present on your system.
2. **Run as Administrator**: Right-click on the batch file and select "Run as administrator" to grant the necessary permissions for deleting system files.
3. **Follow Prompts**: Adhere to any on-screen instructions provided by the script to complete the cleaning process.

## Examples

### `clean_temp_files.bat`

```batch
@echo off
echo Cleaning up temporary files...
del /q /s %TEMP%\*
echo Cleaning up Recycle Bin...
rd /s /q C:\$Recycle.Bin
echo Cleaning up temporary internet files...
rd /s /q "%LocalAppData%\Microsoft\Windows\INetCache"
echo Cleaning up user-specific temporary files...
del /q /s "%USERPROFILE%\AppData\Local\Temp\*"
echo Cleanup complete!
pause
```

### `clean_ver2.bat`

```batch
@echo off
echo Cleaning up temporary files...
del /q /s %TEMP%\*
echo Cleaning up Recycle Bin...
rd /s /q C:\$Recycle.Bin
echo Cleaning up temporary internet files...
rd /s /q "%LocalAppData%\Microsoft\Windows\INetCache"
echo Cleaning up user-specific temporary files...
del /q /s "%USERPROFILE%\AppData\Local\Temp\*"
echo Cleaning up Windows Update cache...
rd /s /q C:\Windows\SoftwareDistribution\Download
echo Cleaning up old prefetch files...
del /q /s C:\Windows\Prefetch\*
echo Cleanup complete!
pause
```

## Customization

Both scripts can be tailored by adding or modifying commands to target specific files or directories for cleanup. It is advisable to test any changes in a controlled environment to prevent unintended data loss.

## Disclaimer

Use these scripts at your own risk. Ensure that backups of important data are created before executing the scripts, as they will permanently delete files.
