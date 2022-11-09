::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdDWDJFGL+UcMPBRZTReYAFu1BKcd5u3H5umIrAMUV+1f
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJiZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsGAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIGBVtgWRaAMws=
::eg0/rx1wNQPfEVWB+kM9LVsJDBORMCW4B6F8
::fBEirQZwNQPfEVWB+kM9LVsJDBORMCusC/sZ8O2b
::cRolqwZ3JBvQF1fEqQI/Ph5GQAWbfG21FPUL++Sb
::dhA7uBVwLU+EWFKN7ksxaBJaT0ri
::YQ03rBFzNR3SWATE+k0gLXs=
::dhAmsQZ3MwfNWATE+k0gLXs=
::ZQ0/vhVqMQ3MEVWAtB9wJhRESWQ=
::Zg8zqx1/OA3MEVWAtB9wJhRESWQ=
::dhA7pRFwIByZRRmL4kciJBpNDAKNLiutFblc/+Hv56qCpEsYV/Z/bICb17WXYPIW60mkdpkgxm9Ondls
::Zh4grVQjdCyDJEyX8VAjFA9bQQWRJleKE7kM4fzH+PmL4lsQBqw6YIq7
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 07
titile wsl vm - running

:start
cls
echo   /\    CPU: OK    OVERCLOCK: 200MH
echo  /  \   RAM: OK    2GB
echo  \  /   GPU: OK    STAT: NORMAL
echo   \/    NET: OK    INET: 192.168.0.%random%
timeout /t 3 >nul
goto grub

:grub
cls
echo [=========]
echo [WSL      ]1
echo [WSL recov]2
echo [DOS      ]3
echo [WIN      ]4
echo [=========]
set /p"sys=grub>"
cls
if /I %sys% equ 1 goto WSL
if /I %sys% equ 2 goto REC
if /I %sys% equ 3 goto DOS
if /I %sys% equ 4 goto WIN
timeout /t 3 >nul

:WSL
cls
echo reading ramdisk...
timeout /t 3 >nul
cls
wsl

:REC
cls
echo reading ramdisk...
timeout /t 3 >nul
cls
wsl bash -norc -noprofile --login

:DOS
cls
echo reading ramdisk...
timeout /t 3 >nul
cls
call cmd.exe

:WIN
cls
echo reading ramdisk...
timeout /t 3 >nul
cls
exit
