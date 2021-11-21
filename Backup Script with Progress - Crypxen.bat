REM Configuring Console Settings
@ECHO OFF
color 03
Title Backup Current User profile
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


REM Excluded Directorys and Files
SET crypxenfiles="*ntuser*" "*Sti_*" "*jagex*" ".bash*"
SET crypxenfolders=".NEt v4.5" ".NET v4.5 Classic" "Administrator" "Administrator" "All Users" "Default" "Default User" "Default.migrated" "Public" "tektegrity" ".*" "AppData" "Virtual Box*" "source" "Tracing" "GlobalMeet Guest Desktop" "Local Settings" "NetHood" "Recent" "Roaming" "OneDrive" "MicrosoftEdge*" "SendTo" "Application Data" "3D Objects" "Cookies" "IntelGraphics*" "PrintHood" "Start Menu" "Searches" "Templates" "Saved Games"


REM Backup Source and Destination
SET crypxensource="C:\users"
SET crypxendestination="\\COMPUTERNAME\location\%computername%\Users"

REM This is the log file
SET crypxenlog="\\COMPUTERNAME\location\%computername%\Backup Report.log"



cls
ECHO. 	
ECHO.
ECHO 	 .d8888b.                                                       
ECHO 	d88P  Y88b                                                      
ECHO 	888    888                                                      
ECHO 	888        888d888 888  888 88888b.  888  888  .d88b.  88888b.  
ECHO 	888        888P"   888  888 888 "88b `Y8bd8P' d8P  Y8b 888 "88b 
ECHO 	888    888 888     888  888 888  888   X88K   88888888 888  888 
ECHO 	Y88b  d88P 888     Y88b 888 888 d88P .d8""8b. Y8b.     888  888 
ECHO 	 "Y8888P"  888      "Y88888 88888P"  888  888  "Y8888  888  888 
ECHO 	                        888 888                                 
ECHO 	                   Y8b d88P 888                                 
ECHO 	                    "Y88P"  888                                 
ECHO.
echo Loading...
echo ----------------------------------
echo Progress: �������������������� 1%%
echo ----------------------------------

REM Creating a directory for the computer in questions
mkdir "\\COMPUTERNAME\location\%computername%"

cls
ECHO. 	
ECHO.
ECHO 	 .d8888b.                                                       
ECHO 	d88P  Y88b                                                      
ECHO 	888    888                                                      
ECHO 	888        888d888 888  888 88888b.  888  888  .d88b.  88888b.  
ECHO 	888        888P"   888  888 888 "88b `Y8bd8P' d8P  Y8b 888 "88b 
ECHO 	888    888 888     888  888 888  888   X88K   88888888 888  888 
ECHO 	Y88b  d88P 888     Y88b 888 888 d88P .d8""8b. Y8b.     888  888 
ECHO 	 "Y8888P"  888      "Y88888 88888P"  888  888  "Y8888  888  888 
ECHO 	                        888 888                                 
ECHO 	                   Y8b d88P 888                                 
ECHO 	                    "Y88P"  888                                 
ECHO.												
ECHO Backup Running....						
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ���������������۲��� 80%%
echo ----------------------------------

REM This is the copy string
robocopy /MIR /r:2 /w:2 /LOG+:%crypxenlog% %crypxensource% %crypxendestination% /XF %crypxenfiles% /XD %crypxenfolders% /tee

GOTO END
:END
cls
ECHO. 	
ECHO.
ECHO 	 .d8888b.                                                       
ECHO 	d88P  Y88b                                                      
ECHO 	888    888                                                      
ECHO 	888        888d888 888  888 88888b.  888  888  .d88b.  88888b.  
ECHO 	888        888P"   888  888 888 "88b `Y8bd8P' d8P  Y8b 888 "88b 
ECHO 	888    888 888     888  888 888  888   X88K   88888888 888  888 
ECHO 	Y88b  d88P 888     Y88b 888 888 d88P .d8""8b. Y8b.     888  888 
ECHO 	 "Y8888P"  888      "Y88888 88888P"  888  888  "Y8888  888  888 
ECHO 	                        888 888                                 
ECHO 	                   Y8b d88P 888                                 
ECHO 	                    "Y88P"  888                                 
ECHO.												
ECHO Backup Running....						
echo.
echo Setup complete...
echo ----------------------------------
echo Progress: �������������������� 100%%
echo.
echo.
REM ###########################################################
Pause