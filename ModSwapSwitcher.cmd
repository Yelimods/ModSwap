@echo off
color 71
rem      ########################################################################
rem      #    The ModSwap Project for:  Farming Simulator by Giants Software    #
rem      #         © 2014 Yelibam at www.fs-uk.com - yelimods@mail.com          #
rem      ########################################################################
rem =============================================================================
rem Initialise variables and settings
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
if %msQuick%==1 goto quick01
rem =============================================================================
rem Introduction
rem =============================================================================
rem exit codes are E210 to E295
cls
echo -- ModSwap v%msVer% - Switcher --
echo.
echo.
echo          ##########################################
echo          #                                        #
echo          #            ModSwap Switcher            #
echo          #                                        #
echo          #       Copyright (c) 2014 Yelibam       #
echo          #    www.fs-uk.com - yelimods@mail.com   #
echo          #                                        #
echo          #       for Farming Simulator 2013       #
echo          #               by Giants                #
echo          #                                        #
echo          ##########################################
echo.
echo ModSwap Switcher will enable you to switch between your Mod Group folders.
echo These Mod Group folders need to have been created by ModSwap Builder.
echo.
echo Please read the accompanying help file before continuing.
echo.
pause
:quick01
rem =============================================================================
rem Check for log file; create if none & initialise
rem =============================================================================
if exist %msLog% goto oldlog
cls
echo -- ModSwap v%msVer% - Switcher --
echo.
echo.
echo ModSwap log file not found.
echo %date% %time% - ModSwapSwitcher - Log file not found> %msLog%
echo %date% %time% - ModSwapSwitcher - New log file Started>> %msLog%
echo %date% %time% - ModSwapSwitcher - The ModSwap Project for: Farming Simulator by Giants Software>> %msLog%
echo %date% %time% - ModSwapSwitcher - © 2014 Yelibam at www.fs-uk.com - yelimods@mail.com>> %msLog%
echo.
echo New log file started: ModSwapLog.dat
echo.
pause
:oldlog
echo.>> %msLog%
echo %date% %time% - ModSwapSwitcher - Switcher Opened>> %msLog%
echo %date% %time% - ModSwapSwitcher - Switcher version %msVer%>> %msLog%
if %msQuick% equ 1 echo %date% %time% - ModSwapSwitcher - Quick Mode is On>> %msLog%
rem =============================================================================
rem Check for data file; exit if none
rem =============================================================================
if not exist %msData% goto noData
rem =============================================================================
rem Extract Mod Groups from file
rem =============================================================================
cls
echo -- ModSwap v%msVer% - Switcher --
set msGroup1=unused
set msGroup2=unused
set msGroup3=unused
set msGroup4=unused
set msGroup5=unused
set msGroup6=unused
set msGroup7=unused
set msGroup8=unused
set msGroup9=unused
set msGroup0=unused
(
set /p msGroup1=
set /p msGroup2=
set /p msGroup3=
set /p msGroup4=
set /p msGroup5=
set /p msGroup6=
set /p msGroup7=
set /p msGroup8=
set /p msGroup9=
set /p msGroup0=
)<%msData%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 1 %msGroup1%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 2 %msGroup2%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 3 %msGroup3%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 4 %msGroup4%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 5 %msGroup5%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 6 %msGroup6%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 7 %msGroup7%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 8 %msGroup8%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 9 %msGroup9%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 0 %msGroup0%>> %msLog%
rem =============================================================================
rem Count Mod Groups
rem =============================================================================
set /a msGroupCount=0
if not %msGroup1%==unused set /a msGroupCount+=1
if not %msGroup2%==unused set /a msGroupCount+=1
if not %msGroup3%==unused set /a msGroupCount+=1
if not %msGroup4%==unused set /a msGroupCount+=1
if not %msGroup5%==unused set /a msGroupCount+=1
if not %msGroup6%==unused set /a msGroupCount+=1
if not %msGroup7%==unused set /a msGroupCount+=1
if not %msGroup8%==unused set /a msGroupCount+=1
if not %msGroup9%==unused set /a msGroupCount+=1
if not %msGroup0%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapSwitcher - Mod Group names found: %msGroupCount% Mod Groups>> %msLog%
rem =============================================================================
rem Check for missing Mod Group folders
rem =============================================================================
set /a msFolderCount=1
if exist _mods_%msGroup1% set /a msFolderCount+=1
if exist _mods_%msGroup2% set /a msFolderCount+=1
if exist _mods_%msGroup3% set /a msFolderCount+=1
if exist _mods_%msGroup4% set /a msFolderCount+=1
if exist _mods_%msGroup5% set /a msFolderCount+=1
if exist _mods_%msGroup6% set /a msFolderCount+=1
if exist _mods_%msGroup7% set /a msFolderCount+=1
if exist _mods_%msGroup8% set /a msFolderCount+=1
if exist _mods_%msGroup9% set /a msFolderCount+=1
if exist _mods_%msGroup0% set /a msFolderCount+=1
echo %date% %time% - ModSwapSwitcher - Mod Group folders found: %msFolderCount% folders>> %msLog%
if not %msFolderCount% equ %msGroupCount% goto groupFolderMismatch
rem =============================================================================
rem Detect current Mod Group
rem =============================================================================
if not exist _mods_%msGroup1% set msCurrentGroup=%msGroup1% & set msCurrentFolder=_mods_%msGroup1% & goto current
if not exist _mods_%msGroup2% set msCurrentGroup=%msGroup2% & set msCurrentFolder=_mods_%msGroup2% & goto current
if not exist _mods_%msGroup3% set msCurrentGroup=%msGroup3% & set msCurrentFolder=_mods_%msGroup3% & goto current
if not exist _mods_%msGroup4% set msCurrentGroup=%msGroup4% & set msCurrentFolder=_mods_%msGroup4% & goto current
if not exist _mods_%msGroup5% set msCurrentGroup=%msGroup5% & set msCurrentFolder=_mods_%msGroup5% & goto current
if not exist _mods_%msGroup6% set msCurrentGroup=%msGroup6% & set msCurrentFolder=_mods_%msGroup6% & goto current
if not exist _mods_%msGroup7% set msCurrentGroup=%msGroup7% & set msCurrentFolder=_mods_%msGroup7% & goto current
if not exist _mods_%msGroup8% set msCurrentGroup=%msGroup8% & set msCurrentFolder=_mods_%msGroup8% & goto current
if not exist _mods_%msGroup9% set msCurrentGroup=%msGroup9% & set msCurrentFolder=_mods_%msGroup9% & goto current
if not exist _mods_%msGroup0% set msCurrentGroup=%msGroup0% & set msCurrentFolder=_mods_%msGroup0%
:current
echo %date% %time% - ModSwapSwitcher - Detected current Mod Group: %msCurrentGroup%>> %msLog%
rem =============================================================================
rem Select next Mod Group
rem =============================================================================
echo.
echo.
echo Your Mod Groups are as follows:
:redoNext
echo.
if not %msGroup1%==unused echo  1 %msGroup1%
if not %msGroup2%==unused echo  2 %msGroup2%
if not %msGroup3%==unused echo  3 %msGroup3%
if not %msGroup4%==unused echo  4 %msGroup4%
if not %msGroup5%==unused echo  5 %msGroup5%
if not %msGroup6%==unused echo  6 %msGroup6%
if not %msGroup7%==unused echo  7 %msGroup7%
if not %msGroup8%==unused echo  8 %msGroup8%
if not %msGroup9%==unused echo  9 %msGroup9%
if not %msGroup0%==unused echo 10 %msGroup0%
rem No Mod Groups defined
if %msGroupCount% equ 0 goto noGroup
rem Only one Mod Group defined
if %msGroupCount% equ 1 goto oneGroup
rem =============================================================================
rem Select next group
rem =============================================================================
echo.
echo The current Mod Group is %msCurrentGroup%
echo.
echo Which Mod Group to use next:
echo.
if %msGroupCount%==2 goto choose2
if %msGroupCount%==3 goto choose3
if %msGroupCount%==4 goto choose4
if %msGroupCount%==5 goto choose5
if %msGroupCount%==6 goto choose6
if %msGroupCount%==7 goto choose7
if %msGroupCount%==8 goto choose8
if %msGroupCount%==9 goto choose9
choice /C 1234567890 /N /M "(1) (2) (3) (4) (5) (6) (7) (8) (9) (0)"
goto chooseNow
:choose9
choice /C 123456789 /N /M "(1) (2) (3) (4) (5) (6) (7) (8) (9)"
goto chooseNow
:choose8
choice /C 12345678 /N /M "(1) (2) (3) (4) (5) (6) (7) (8)"
goto chooseNow
:choose7
choice /C 1234567 /N /M "(1) (2) (3) (4) (5) (6) (7)"
goto chooseNow
:choose6
choice /C 123456 /N /M "(1) (2) (3) (4) (5) (6)"
goto chooseNow
:choose5
choice /C 12345 /N /M "(1) (2) (3) (4) (5)"
goto chooseNow
:choose4
choice /C 1234 /N /M "(1) (2) (3) (4)"
goto chooseNow
:choose3
choice /C 123 /N /M "(1) (2) (3)"
goto chooseNow
:choose2
choice /C 12 /N /M "(1) (2)"
:chooseNow
if errorlevel 10 set msNextGroup=%msGroup0% & set msNextFolder=_mods_%msGroup0%
if errorlevel 9 set msNextGroup=%msGroup9% & set msNextFolder=_mods_%msGroup9%
if errorlevel 8 set msNextGroup=%msGroup8% & set msNextFolder=_mods_%msGroup8%
if errorlevel 7 set msNextGroup=%msGroup7% & set msNextFolder=_mods_%msGroup7%
if errorlevel 6 set msNextGroup=%msGroup6% & set msNextFolder=_mods_%msGroup6%
if errorlevel 5 set msNextGroup=%msGroup5% & set msNextFolder=_mods_%msGroup5%
if errorlevel 4 set msNextGroup=%msGroup4% & set msNextFolder=_mods_%msGroup4%
if errorlevel 3 set msNextGroup=%msGroup3% & set msNextFolder=_mods_%msGroup3%
if errorlevel 2 set msNextGroup=%msGroup2% & set msNextFolder=_mods_%msGroup2%
if errorlevel 1 set msNextGroup=%msGroup1% & set msNextFolder=_mods_%msGroup1%
goto goSwitch
:clearForNext
cls
echo -- ModSwap v%msVer% - Switcher --
echo.
echo.
goto redoNext
:goSwitch
echo.
echo The next Mod Group will be %msNextGroup%
echo %date% %time% - ModSwapSwitcher - Selected next Mod Group: %msNextGroup%>> %msLog%
echo.
echo Is this correct?
echo.
choice /C YN /N /M "(Y)es or (N)o"
if errorlevel 2 echo %date% %time% - ModSwapSwitcher - Mod Group Selection aborted.>> %msLog% & goto clearForNext
cls
echo -- ModSwap v%msVer% - Switcher --
rem =============================================================================
rem Switch Mod Groups
rem =============================================================================
ren mods %msCurrentFolder%
ren %msNextFolder% mods
echo %date% %time% - ModSwapSwitcher - Switched out Mod Group folder: %msCurrentFolder%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Switched in Mod Group folder: %msNextFolder%>> %msLog%
echo.
echo.
echo Your Mod Groups have been switched.
echo.
echo You are now using Mod Group: %msNextGroup%
echo.
echo.
echo          ##########################################
echo          #                                        #
echo          #            ModSwap Switcher            #
echo          #                                        #
echo          #    Thank you for using this program    #
echo          #                                        #
echo          ##########################################
echo.
echo ModSwap Switcher will now close.
echo.
echo %date% %time% - ModSwapSwitcher - Switcher Completed>> %msLog%
if %msQuick%==1  timeout 3 & goto quickExit
pause
:quickExit
echo %date% %time% - ModSwapSwitcher - Switcher Closed E290>> %msLog% & exit
rem #########
rem Exit E290
rem #########
:noData
echo %date% %time% - ModSwapSwitcher - Validation: Data file not found>> %msLog%
cls
echo -- ModSwap v%msVer% - Switcher --
echo.
echo.
echo ModSwap data file not found.
echo.
echo Please run ModSwap Builder to create your Mod Groups.
echo.
echo ModSwap Switcher will now close.
echo.
pause
echo %date% %time% - ModSwapSwitcher - Switcher Closed E210>> %msLog% & exit
rem #########
rem Exit E210
rem #########
:groupFolderMismatch
echo %date% %time% - ModSwapSwitcher - Validation: %msGroupCount% Mod Groups; %msFolderCount% folders>> %msLog%
echo.
echo.
echo One or more Mod Group folders were not found.
echo.
echo Please run ModSwap Builder to create your Mod Groups.
echo.
echo ModSwap Switcher will now close.
echo.
pause
echo %date% %time% - ModSwapSwitcher - Switcher Closed E230>> %msLog% & exit
rem #########
rem Exit E230
rem #########
:noGroup
rem =============================================================================
rem No Mod Groups defined
rem =============================================================================
echo %date% %time% - ModSwapSwitcher - Validation: %msGroupCount% Mod Groups defined>> %msLog%
echo.
echo No Mod Groups were found.
echo.
echo Please run ModSwap Builder to create your Mod Groups.
echo.
echo ModSwap Switcher will now close.
echo.
pause
echo %date% %time% - ModSwapSwitcher - Switcher Closed E260>> %msLog% & exit
rem #########
rem Exit E260
rem #########
:oneGroup
rem =============================================================================
rem Only one Mod Group defined
rem =============================================================================
echo %date% %time% - ModSwapBuilder - Validation: %msGroupCount% Mod Group defined>> %msLog%
echo.
echo Only one Mod Group was found.
echo You need to have two or more in order to switch them.
echo.
echo Please run ModSwap Builder to create your Mod Groups.
echo.
echo ModSwap Switcher will now close.
echo.
pause
echo %date% %time% - ModSwapSwitcher - Switcher Closed E270>> %msLog% & exit
rem #########
rem Exit E270
rem #########
