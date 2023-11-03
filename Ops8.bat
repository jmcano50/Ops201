Ops8.batcano16266


@echo off
REM Turn off echoing of commands to the console

setlocal enabledelayedexpansion
REM Enable delayed variable expansion

set /p sourcePath=Enter the source folder path:
REM Prompt the user to enter the source folder path

set /p destinationPath=Enter the destination folder path:
REM Prompt the user to enter the destination folder path

if not exist "!sourcePath!\" (
    REM Check if the source folder doesn't exist
    echo Error: Source folder does not exist.
    goto :eof
)

if not exist "!destinationPath!\" (
    REM Check if the destination folder doesn't exist
    echo Error: Destination folder does not exist.
    goto :eof
)

robocopy "!sourcePath!" "!destinationPath!" /E
REM Use Robocopy to copy files and directories from source to destination

if errorlevel 8 (
    REM Check if Robocopy encountered errors during the copy operation
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
)

:end
endlocal
REM End of the script and clean up the local environment


