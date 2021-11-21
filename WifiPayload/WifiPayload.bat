REM Configuring Console Settings
@ECHO OFF
color 03
Title Wifi Payload
cls

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


set PayloadPath="WifiNetwork Payloads"
mkdir %PayloadPath%
netsh wlan export profile key=clear folder=%PayloadPath%
ECHO Opening Payload Path 
explorer.exe %PayloadPath%
pause