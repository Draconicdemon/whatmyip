@echo off
setlocal enabledelayedexpansion

:mainmenu
cls
call :colorchange
echo db   d8b   db  .d8b.  d888888b  .o88b. db   db d8888b.  .d88b.   d888b  .d8888. 
echo 88   I8I   88 d8' `8b `~~88~~' d8P  Y8 88   88 88  `8D .8P  Y8. 88' Y8b 88'  YP 
echo 88   I8I   88 88ooo88    88    8P      88ooo88 88   88 88    88 88      `8bo.   
echo Y8   I8I   88 88~~~88    88    8b      88~~~88 88   88 88    88 88  ooo   `Y8b. 
echo `8b d8'8b d8' 88   88    88    Y8b  d8 88   88 88  .8D `8b  d8' 88. ~8~ db   8D 
echo `8b8' `8d8'  YP   YP    YP     `Y88P' YP   YP Y8888D'  `Y88P'   Y888P  `8888Y' 
echo --------------------------------
echo made by oblivion c2
echo Please choose an option:       -  
echo -------------------------------------------------
echo 1. Show the current time  2. Check open ports  --
echo 3. Show IP address                            ----
echo 5. Exit                                        --
echo -------------------------------------------------
set /p choice=Enter your choice (1-5):

if %choice%==1 goto showtime
if %choice%==2 goto checkports
if %choice%==3 goto showip
if %choice%==4 goto listgmail
if %choice%==5 goto exit

echo Invalid choice, please select 1, 2, 3, 4, or 5.
pause
goto mainmenu

:showtime
cls
call :colorchange
echo The current time is:
time /T
pause
goto mainmenu

:checkports
cls
call :colorchange
echo Checking open ports...
netstat -an | find "LISTENING"
pause
goto mainmenu

:showip
cls
call :colorchange
echo Your IP address is:
ipconfig | findstr /i "IPv4"
pause
goto mainmenu

:listgmail
cls
call :colorchange
if exist gmails.txt (
    echo Your Gmail addresses:
    type gmails.txt
) else (
    echo No gmails.txt file found.
)
pause
goto mainmenu

:exit
exit

:colorchange
set /a "count=!random! %% 15 + 1"
color !count!
goto :eof
