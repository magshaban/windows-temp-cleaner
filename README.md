# windows-temp-cleaner

## Description

`clean.bat` is a batch script meticulously crafted to automate the cleanup of temporary files and directories on a Windows system. By utilizing this script, users can efficiently free up disk space and enhance system performance through the removal of superfluous files.

## Features

- Deletes temporary files from the Windows Temp directory.
- Clears the Recycle Bin.
- Removes temporary internet files.
- Cleans up user-specific temporary files.
- Customizable to delete additional files or directories as per user requirements.

## Usage

1. **Download the Script**: Ensure the `clean.bat` file is present on your system.
2. **Run as Administrator**: Right-click on the `clean.bat` file and select "Run as administrator" to grant the necessary permissions for deleting system files.
3. **Follow Prompts**: Adhere to any on-screen instructions provided by the script to complete the cleaning process.

## Example

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

## Customization

The `clean.bat` script can be tailored by adding or modifying commands to target specific files or directories for cleanup. It is advisable to test any changes in a controlled environment to prevent unintended data loss.

## Disclaimer

Use this script at your own risk. Ensure that backups of important data are created before executing the script, as it will permanently delete files.
