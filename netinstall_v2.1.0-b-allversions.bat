color 02
@Echo off
 
:m0
title PROJECT 72
Echo ------------------------------------
Echo TihonD software worX
Echo ------------------------------------
Echo Version: 2.1.0-b-allversions
Echo RU VERSIOMS
Echo ------------------------------------
Echo Please select command:
Echo ------------------------------------
Echo  1 - Install from web (RECOMMENDED)
Echo  2 - Disable autorun
Echo  3 - Restore autorun
Echo  4 - Delete
Echo  5 - Open folder
Echo  6 - Kill process
Echo  7 - Restart process
Echo  8 - Fix WinDefender
Echo  9 - English version
Echo 10 - Install Zoom


Set /p choice="Your choice: "
if not defined choice goto m0
if "%choice%"=="1" goto m1
if "%choice%"=="2" goto m2
if "%choice%"=="3" goto m3
if "%choice%"=="4" goto m4
if "%choice%"=="5" goto m5
if "%choice%"=="6" goto m6
if "%choice%"=="7" goto m7
if "%choice%"=="8" goto m8
if "%choice%"=="9" goto m9
if "%choice%"=="0" goto m10
if "%choice%"=="10" goto m10

Echo.
Echo Wrong selection, try again...
Echo.
Echo.
goto m0

:m1
Echo Process started...
mkdir %SYSTEMDRIVE%\PRJ72
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%SYSTEMDRIVE%\PRJ72\prj72_v2.1.0-b-daa.exe"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%SYSTEMDRIVE%\PRJ72\"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%SYSTEMDRIVE%\PRJ72"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "*\prj72_v2.1.0-b-daa.exe"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%~dp0prj72_v2.1.0-b-daa.exe"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionProcess "bitsadmin.exe"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionProcess "prj72_v2.1.0-b-daa.exe"

Echo ------------------------------------
Echo 1 - Install from web (bitsadmin) (RECOMMENDED)
Echo 2 - Install from web (browser)
Echo 3 - Manual install (FOR BOSS OF THIS GYM ONLY)

Set /p choice="Your choice: "
if not defined choice goto m0
if "%choice%"=="1" goto i1
if "%choice%"=="2" goto i2
if "%choice%"=="3" goto i3

Echo.
Echo Wrong selection, try again...
Echo.
Echo.
goto m0

:i1
bitsadmin /transfer /download /priority high "https://server.tihond.ru/prj/prj72/download/exeversions/prj72_v2.1.0-b-daa.exe" "%SYSTEMDRIVE%\PRJ72\prj72_v2.1.0-b-daa.exe"
goto iend

:i2
Echo Process started...
Echo Download file using browser and press any key to continue...
start "install" "https://server.tihond.ru/prj/prj72/download/exeversions/prj72_v2.1.0-b-daa.exe"
pause
copy "%~dp0\prj72_v2.1.0-b-daa.exe" "%SYSTEMDRIVE%\PRJ72\prj72_v2.1.0-b-daa.exe"
goto iend

:i3
Echo Put RU version EXE file in the programm folder manually (prj72_v2.1.0-b-daa.exe)...
explorer.exe "%SYSTEMDRIVE%\PRJ72"
pause
goto iend

:iend
copy "%~dp0\netinstall_v2.1.0-b-allversions.bat" "%SYSTEMDRIVE%\PRJ72\netinstall_v2.1.0-b-allversions.bat"
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v PRJ72_v2.1.0-b-daa /d "%SYSTEMDRIVE%\PRJ72\prj72_v2.1.0-b-daa.exe"
explorer.exe "%SYSTEMDRIVE%\PRJ72"
Echo.
Echo Client soft downloaded and installed.
Echo
Echo Open EXE manually to continue...
Echo Press middle mouse button on EXE tray icon to start test stream...
Echo.
goto m0

:m2
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v PRJ72_v2.1.0-b-daa
Echo.
Echo Autorun disabled.
Echo.
goto m0

:m3
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v PRJ72_v2.1.0-b-daa /d "%SYSTEMDRIVE%\PRJ72\prj72_v2.1.0-b-daa.exe"
Echo.
Echo Autorun restored.
Echo.
goto m0

:m4
taskkill /im prj72_v2.1.0-b-daa.exe
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v PRJ72_v2.1.0-b-daa
rmdir /s /q "%SYSTEMDRIVE%\PRJ72\"
Echo.
Echo Client soft deleted.
Echo.
goto m0

:m5
explorer.exe "%SYSTEMDRIVE%\PRJ72"
Echo.
Echo Folder opened.
Echo.
goto m0

:m6
taskkill /im prj72_v2.1.0-b-daa.exe
Echo.
Echo Process killed.
Echo.
goto m0

:m7
taskkill /im prj72_v2.1.0-b-daa.exe
%SYSTEMDRIVE%\PRJ72\prj72_v2.1.0-b-daa.exe
Echo.
Echo Process restarted.
Echo.
goto m0

:m8
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%SYSTEMDRIVE%\PRJ72\prj72_v2.1.0-b-daa.exe"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%SYSTEMDRIVE%\PRJ72\"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%SYSTEMDRIVE%\PRJ72"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "*\prj72_v2.1.0-b-daa.exe"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%~dp0prj72_v2.1.0-b-daa.exe"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionProcess "bitsadmin.exe"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionProcess "prj72_v2.1.0-b-daa.exe"
Echo.
Echo Windows defender was fixed...
Echo.
goto m0

:m9
mkdir %SYSTEMDRIVE%\PRJ72

Echo ------------------------------------
Echo 1 - Install from web (bitsadmin) (RECOMMENDED)
Echo 2 - Install from web (browser)

Set /p choice="Your choice: "
if not defined choice goto m0
if "%choice%"=="1" goto e1
if "%choice%"=="2" goto e2

Echo.
Echo Wrong selection, try again...
Echo.
Echo.
goto m0

:e1
bitsadmin /transfer /download /priority high "https://server.tihond.ru/prj/prj72/download/exeversions/netinstall_v2.1.0-b-daa-en.bat" "%SYSTEMDRIVE%\PRJ72\netinstall_v2.1.0-b-daa-en.bat"
call "%SYSTEMDRIVE%\PRJ72\netinstall_v2.1.0-b-daa-en.bat"
Echo.
Echo English version called...
Echo.
Echo.
goto m0

:e2
start "install" "https://server.tihond.ru/prj/prj72/download/exeversions/netinstall_v2.1.0-b-daa-en.bat"
call "%~dp0\netinstall_v2.1.0-b-daa-en.bat"
Echo.
Echo English version called...
Echo.
Echo.
goto m0

:m10
mkdir %SYSTEMDRIVE%\PRJ72

Echo ------------------------------------
Echo 1 - Install from web (bitsadmin) (RECOMMENDED)
Echo 2 - Install from web (browser)

Set /p choice="Your choice: "
if not defined choice goto m0
if "%choice%"=="1" goto z1
if "%choice%"=="2" goto z2

Echo.
Echo Wrong selection, try again...
Echo.
Echo.
goto m0

:z1
bitsadmin /transfer /download /priority high "https://zoom.us/client/latest/ZoomInstaller.exe" "%SYSTEMDRIVE%\PRJ72\ZoomInstaller.exe"
"%SYSTEMDRIVE%\PRJ72\ZoomInstaller.exe"
Echo.
Echo Zoom downloaded...
Echo.
Echo.
goto m0

:z2
start "install" "https://zoom.us/client/latest/ZoomInstaller.exe"
"%~dp0\ZoomInstaller.exe"
Echo.
Echo Zoom downloaded...
Echo.
Echo.
goto m0
