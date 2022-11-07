@echo off
color 07
titile wsl vm - running

:start
cls
echo   /\    NET: OK       IP: 192.168.%random%.%random%
echo  /  \   CPU: OK      CLOCK: 200 MH
echo  \  /   FAN: OK      STATUS: OK
echo   \/    RAM: OK      4GB
timeout /t 3 >nul
goto grub

:grub
cls
echo [=========]
echo [WSL      ]1
echo [WSL recov]2
echo [         ]
echo [=========]
set /p"sys=grub>"
cls
if /I %sys% equ 1 wsl
if /I %sys% equ 2 wsl bash -norc -noprofile --login
