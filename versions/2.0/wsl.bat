@echo off
color 07
title WSL VM Turbo - running!

:start
cls
echo  /\  CPU: OK   OVERCLOCK: 200MH
echo /  \ RAM: OK   4GB
echo \  / GPU: OK   STAT: NORMAL
echo  \/  NET: OK   INET: 192.168.0.%random%
timeout /t 3
goto grub

:WIN
cls
echo reading ramdisk...
timeout /t 3 >nul
exit

:MS-DOS
cls
echo reading ramdisk...
timeout /t 3 >nul
cls
call cmd.exe

:WSL
cls
echo reading ramdisk...
timeout /t 3 >nul
cls
wsl

:1
cls
echo reading ramdisk...
timeout /t 3 >nul
cls
echo WSL RECOVERY:
wsl bash -norc -noprofile --login

:GRUB
cls
echo [======]
echo [WSL   ]
echo [WSL RE]
echo [DOS   ]
echo [WIN   ]
echo [======]
set /p"sys=grub>"
if /I %sys% equ 1 goto WSL
if /I %sys% equ 2 goto 1
if /I %sys% equ 3 goto DOS
if /I %sys% equ 4 goto WIN
