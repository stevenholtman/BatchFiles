REM Configuring Console Settings
@ECHO OFF
color 03
Title Password Parser
cls

REM Developer Information
ECHO.
ECHO.
ECHO ##########################################################################################
ECHO #                Developed by Steven Holtman in Powershell                               #
ECHO #                    Website: https://StevenHoltman.com                                  #
ECHO #        Get the latest scripts at https://github.com/stevenholtman                      #
ECHO # This script is scanning the system for files with filenames containing password in it. #
ECHO ##########################################################################################
ECHO.
ECHO.

REM Setting Log Name
set host=%COMPUTERNAME%
set PasswordsLog="%host% - Passwords.log"

REM Scanning for Files
ECHO Scanning for passwords...
dir /b /s "%HOMEDRIVE%\*Password*.txt" "%HOMEDRIVE%\*Password*.pdf" "%HOMEDRIVE%\*Password*.doc" "%HOMEDRIVE%\*Password*.docx" "%HOMEDRIVE%\*Password*.xls" "%HOMEDRIVE%\*Password*.xlsx" >> %PasswordsLog%
ECHO Scan Complete

REM Opening the log Files
notepad.exe %PasswordsLog%
pause