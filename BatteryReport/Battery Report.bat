REM Configuring Console Settings
@ECHO OFF
color 03
Title Battery Report
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

REM Setting Paths and Creating Direcotories
set host=%COMPUTERNAME%
set BatteryReportPath="BatteryReports"
set BatteryReportFile="%BatteryReportPath%/%host% - BatteryReport.html"
mkdir %BatteryReportPath%

REM Getting the Battery Report
powercfg /batteryreport /output %BatteryReportFile%

REM Opening Report Location
explorer.exe %BatteryReportPath%
pause