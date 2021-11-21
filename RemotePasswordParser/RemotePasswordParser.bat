REM Configuring Console Settings
@ECHO OFF
color 03
Title Remote Password Parser
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

REM Creating Log Folder
mkdir "RemoteComputers"

REM Scanning remote computers for Files
FOR /F "tokens=*" %%i IN (RemoteComputers.txt) DO ( 
ECHO Scanning %%i for passwords files...
dir /b /s "\\%%i\C$\*Password*.txt" "\\%%i\C$\*Password*.pdf" "\\%%i\C$\*Password*.doc" "\\%%i\C$\*Password*.docx" "\\%%i\C$\*Password*.xls" "\\%%i\C$\*Password*.xlsx" >> "RemoteComputers\%%i - Passwords.log"
)

REM Finishing state
ECHO Scan Complete

REM Opening the log Files
explorer.exe "RemoteComputers"
pause