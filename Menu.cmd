@echo off
color 73
rem      ########################################################################
rem      #    The ModSwap Project for:  Farming Simulator by Giants Software    #
rem      #         © 2014 Yelibam at www.fs-uk.com - yelimods@mail.com          #
rem      ########################################################################
rem =============================================================================
rem initialise variables and settings
rem =============================================================================
(
set /p msVer=
set /p msQuick=
)<ModSwapSettings.dat
for %%A in ("%~dp0\..") do set "msParent=%%~fA"
set msRoot=ModSwap_v%msVer%
set msLog=%msRoot%\ModSwapLog.dat
set msData=%msRoot%\ModSwapData.dat
set msSettings=%msRoot%\ModSwapSettings.dat
cd %msParent%
rem exit codes are E010 to E095
if %msQuick%==1 goto quick01
rem =============================================================================
rem Page 1 - Introduction
rem =============================================================================
cls
echo.
echo          ##########################################
echo          #                                        #
echo          #          The ModSwap Project           #
echo          #                                        #
echo          #       Copyright (c) 2014 Yelibam       #
echo          #    www.fs-uk.com - yelimods@mail.com   #
echo          #                                        #
echo          #       for Farming Simulator 2013       #
echo          #               by Giants                #
echo          #                                        #
echo          #              version %msVer%               #
echo          #                                        #
echo          ##########################################
echo.
echo There are several elements to ModSwap, and this is the place to start.
echo.
echo ModSwap Builder will enable you to create up to 10 separate Mod Groups.
echo You can then use ModSwap Switcher to switch between them with ease.
echo.
echo Please read the accompanying help file before continuing.
echo.
pause
rem =============================================================================
rem Create desktop shortcut
rem =============================================================================
rem echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
rem echo sLinkFile = "%msParent%\ModSwap.lnk" >> CreateShortcut.vbs
rem echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
rem echo oLink.TargetPath = "%msParent%\%msRoot%\modswapmenu.cmd" >> CreateShortcut.vbs
rem echo oLink.Save >> CreateShortcut.vbs
rem cscript CreateShortcut.vbs
rem rem del CreateShortcut.vbs
rem =============================================================================
rem Page 2 - Initialise log file
rem =============================================================================
cls
echo -- ModSwap Menu v%msVer% --
echo.
echo.
echo ModSwap will create a log of the changes it makes.
if not exist %msLog% goto newlog
echo Do you want to start a new log file, or add to the existing one?
echo.
choice /C NE /N /M "(N)ew or (E)xisting?"
if errorlevel 2 goto oldlog
:quick01
:newlog
rem =============================================================================
rem Archive old Log File
rem =============================================================================
set msArchiveDate=%date:/=-%
set msArchiveTime=%time::=-%
set msArchiveTime=%msArchiveTime:~0,8%
set msArchive=ModSwapLog_%msArchiveDate%_%msArchiveTime%.txt
if exist %msLog% ren %msLog% %msArchive%
echo %date% %time% - ModSwapMenu - New log file Started> %msLog%
echo %date% %time% - ModSwapMenu - © 2014 Yelibam at www.fs-uk.com - yelimods@mail.com>> %msLog%
if exist %msRoot%\%msArchive% echo %date% %time% - ModSwapMenu - Old Log File Archived: %msArchive%>> %msLog%
echo.
echo New log file started: ModSwapLog.dat
if exist %msRoot%\%msArchive% echo The previous log file has been archived.
echo.
:oldlog
echo.>> %msLog%
echo %date% %time% - ModSwapMenu - Menu Opened>> %msLog%
echo %date% %time% - ModSwapMenu - Menu version %msVer%>> %msLog%
if %msQuick% equ 1 echo %date% %time% - ModSwapMenu - Quick Mode is On>> %msLog%
rem =============================================================================
rem Page 3 - Ready to start?
rem =============================================================================
:goSelect
cls
echo -- ModSwap Menu v%msVer% --
echo.
echo.
echo Please select from the choices below.
echo.
echo  1 Run ModSwap Builder
echo  2 Run ModSwap Switcher
echo  3 Settings
echo  4 Exit
echo.
rem choice /C 1234 /N /M "(1) (2) (3) (4)"
choice /C 1234 /N
if errorlevel 4 echo %date% %time% - ModSwapMenu - Menu Closed E010>> %msLog% & exit
if errorlevel 3 goto settings
if errorlevel 2 echo %date% %time% - ModSwapMenu - Launched Switcher>> %msLog% & %msRoot%\ModSwapSwitcher.cmd
if errorlevel 1 echo %date% %time% - ModSwapMenu - Launched Builder>> %msLog% & %msRoot%\ModSwapBuilder.cmd
rem #########
rem Exit E010
rem #########
rem =============================================================================
rem ModSwap Settings
rem =============================================================================
:settings
echo %date% %time% - ModSwapMenu - Settings Opened>> %msLog%
cls
echo -- ModSwap Menu v%msVer% --
echo.
echo.
echo Quick Mode will bypass the help and information screens throughout ModSwap.
echo Use this only when you are familiar with the operation of ModSwap.
echo.
echo Do you wish to use Quick Mode?
echo.
choice /C YN /N /M "(Y)es (N)o"
if errorlevel 2 set msQuick=0 & echo Quick mode is now Off & echo %date% %time% - ModSwapMenu - Quick Mode switched Off>> %msLog%
if errorlevel 1 set msQuick=1 & echo Quick mode is now On & echo %date% %time% - ModSwapMenu - Quick Mode switched On>> %msLog%
(
echo %msVer%
echo %msQuick%
)>%msSettings%
goto goSelect
