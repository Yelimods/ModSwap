@echo off
color 71
rem      ########################################################################
rem      #    The ModSwap Project for:  Farming Simulator by Giants Software    #
rem      #         © 2015 Yelibam at www.fs-uk.com - yelimods@mail.com          #
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
rem exit codes are E210 to E295
if %msQuick%==1 goto quick01
rem =============================================================================
rem Introduction
rem =============================================================================
cls
echo -- ModSwap Switcher v%msVer% --
echo.
echo.
echo          ##########################################
echo          #                                        #
echo          #            ModSwap Switcher            #
echo          #                                        #
echo          #       Copyright (c) 2015 Yelibam       #
echo          #    www.fs-uk.com - yelimods@mail.com   #
echo          #                                        #
echo          #    for Farming Simulator 2013 and 15   #
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
echo -- ModSwap Switcher v%msVer% --
echo.
echo.
echo ModSwap log file not found.
echo %date% %time% - ModSwapSwitcher - Log file not found> %msLog%
echo %date% %time% - ModSwapSwitcher - New log file Started>> %msLog%
echo %date% %time% - ModSwapSwitcher - The ModSwap Project for: Farming Simulator by Giants Software>> %msLog%
echo %date% %time% - ModSwapSwitcher - © 2015 Yelibam at www.fs-uk.com - yelimods@mail.com>> %msLog%
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
echo -- ModSwap Switcher v%msVer% --
set msGroup01=unused
set msGroup02=unused
set msGroup03=unused
set msGroup04=unused
set msGroup05=unused
set msGroup06=unused
set msGroup07=unused
set msGroup08=unused
set msGroup09=unused
set msGroup10=unused
set msGroup11=unused
set msGroup12=unused
set msGroup13=unused
set msGroup14=unused
set msGroup15=unused
set msGroup16=unused
set msGroup17=unused
set msGroup18=unused
set msGroup19=unused
set msGroup20=unused
(
set /p msGroup01=
set /p msGroup02=
set /p msGroup03=
set /p msGroup04=
set /p msGroup05=
set /p msGroup06=
set /p msGroup07=
set /p msGroup08=
set /p msGroup09=
set /p msGroup10=
set /p msGroup11=
set /p msGroup12=
set /p msGroup13=
set /p msGroup14=
set /p msGroup15=
set /p msGroup16=
set /p msGroup17=
set /p msGroup18=
set /p msGroup19=
set /p msGroup20=
)<%msData%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 1 %msGroup01%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 2 %msGroup02%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 3 %msGroup03%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 4 %msGroup04%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 5 %msGroup05%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 6 %msGroup06%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 7 %msGroup07%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 8 %msGroup08%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 9 %msGroup09%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 10 %msGroup10%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 11 %msGroup11%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 12 %msGroup12%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 13 %msGroup13%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 14 %msGroup14%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 15 %msGroup15%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 16 %msGroup16%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 17 %msGroup17%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 18 %msGroup18%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 19 %msGroup19%>> %msLog%
echo %date% %time% - ModSwapSwitcher - Initialise Mod Group 20 %msGroup20%>> %msLog%
rem =============================================================================
rem Count Mod Groups
rem =============================================================================
set /a msGroupCount=0
if not %msGroup01%==unused set /a msGroupCount+=1
if not %msGroup02%==unused set /a msGroupCount+=1
if not %msGroup03%==unused set /a msGroupCount+=1
if not %msGroup04%==unused set /a msGroupCount+=1
if not %msGroup05%==unused set /a msGroupCount+=1
if not %msGroup06%==unused set /a msGroupCount+=1
if not %msGroup07%==unused set /a msGroupCount+=1
if not %msGroup08%==unused set /a msGroupCount+=1
if not %msGroup09%==unused set /a msGroupCount+=1
if not %msGroup10%==unused set /a msGroupCount+=1
if not %msGroup11%==unused set /a msGroupCount+=1
if not %msGroup12%==unused set /a msGroupCount+=1
if not %msGroup13%==unused set /a msGroupCount+=1
if not %msGroup14%==unused set /a msGroupCount+=1
if not %msGroup15%==unused set /a msGroupCount+=1
if not %msGroup16%==unused set /a msGroupCount+=1
if not %msGroup17%==unused set /a msGroupCount+=1
if not %msGroup18%==unused set /a msGroupCount+=1
if not %msGroup19%==unused set /a msGroupCount+=1
if not %msGroup20%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapSwitcher - Mod Group names found: %msGroupCount% Mod Groups>> %msLog%
rem =============================================================================
rem Check for missing Mod Group folders
rem =============================================================================
set /a msFolderCount=1
if exist _mods_%msGroup01% set /a msFolderCount+=1
if exist _mods_%msGroup02% set /a msFolderCount+=1
if exist _mods_%msGroup03% set /a msFolderCount+=1
if exist _mods_%msGroup04% set /a msFolderCount+=1
if exist _mods_%msGroup05% set /a msFolderCount+=1
if exist _mods_%msGroup06% set /a msFolderCount+=1
if exist _mods_%msGroup07% set /a msFolderCount+=1
if exist _mods_%msGroup08% set /a msFolderCount+=1
if exist _mods_%msGroup09% set /a msFolderCount+=1
if exist _mods_%msGroup10% set /a msFolderCount+=1
if exist _mods_%msGroup11% set /a msFolderCount+=1
if exist _mods_%msGroup12% set /a msFolderCount+=1
if exist _mods_%msGroup13% set /a msFolderCount+=1
if exist _mods_%msGroup14% set /a msFolderCount+=1
if exist _mods_%msGroup15% set /a msFolderCount+=1
if exist _mods_%msGroup16% set /a msFolderCount+=1
if exist _mods_%msGroup17% set /a msFolderCount+=1
if exist _mods_%msGroup18% set /a msFolderCount+=1
if exist _mods_%msGroup19% set /a msFolderCount+=1
if exist _mods_%msGroup20% set /a msFolderCount+=1
if not %msFolderCount% equ %msGroupCount% goto groupFolderMismatch
echo %date% %time% - ModSwapSwitcher - Mod Group folders found: %msFolderCount% folders>> %msLog%
rem =============================================================================
rem Detect current Mod Group
rem =============================================================================
if not exist _mods_%msGroup01% set msCurrentGroup=%msGroup01% & set msCurrentFolder=_mods_%msGroup01% & goto current
if not exist _mods_%msGroup02% set msCurrentGroup=%msGroup02% & set msCurrentFolder=_mods_%msGroup02% & goto current
if not exist _mods_%msGroup03% set msCurrentGroup=%msGroup03% & set msCurrentFolder=_mods_%msGroup03% & goto current
if not exist _mods_%msGroup04% set msCurrentGroup=%msGroup04% & set msCurrentFolder=_mods_%msGroup04% & goto current
if not exist _mods_%msGroup05% set msCurrentGroup=%msGroup05% & set msCurrentFolder=_mods_%msGroup05% & goto current
if not exist _mods_%msGroup06% set msCurrentGroup=%msGroup06% & set msCurrentFolder=_mods_%msGroup06% & goto current
if not exist _mods_%msGroup07% set msCurrentGroup=%msGroup07% & set msCurrentFolder=_mods_%msGroup07% & goto current
if not exist _mods_%msGroup08% set msCurrentGroup=%msGroup08% & set msCurrentFolder=_mods_%msGroup08% & goto current
if not exist _mods_%msGroup09% set msCurrentGroup=%msGroup09% & set msCurrentFolder=_mods_%msGroup09% & goto current
if not exist _mods_%msGroup10% set msCurrentGroup=%msGroup10% & set msCurrentFolder=_mods_%msGroup10% & goto current
if not exist _mods_%msGroup11% set msCurrentGroup=%msGroup11% & set msCurrentFolder=_mods_%msGroup11% & goto current
if not exist _mods_%msGroup12% set msCurrentGroup=%msGroup12% & set msCurrentFolder=_mods_%msGroup12% & goto current
if not exist _mods_%msGroup13% set msCurrentGroup=%msGroup13% & set msCurrentFolder=_mods_%msGroup13% & goto current
if not exist _mods_%msGroup14% set msCurrentGroup=%msGroup14% & set msCurrentFolder=_mods_%msGroup14% & goto current
if not exist _mods_%msGroup15% set msCurrentGroup=%msGroup15% & set msCurrentFolder=_mods_%msGroup15% & goto current
if not exist _mods_%msGroup16% set msCurrentGroup=%msGroup16% & set msCurrentFolder=_mods_%msGroup16% & goto current
if not exist _mods_%msGroup17% set msCurrentGroup=%msGroup17% & set msCurrentFolder=_mods_%msGroup17% & goto current
if not exist _mods_%msGroup18% set msCurrentGroup=%msGroup18% & set msCurrentFolder=_mods_%msGroup18% & goto current
if not exist _mods_%msGroup19% set msCurrentGroup=%msGroup19% & set msCurrentFolder=_mods_%msGroup19% & goto current
if not exist _mods_%msGroup20% set msCurrentGroup=%msGroup20% & set msCurrentFolder=_mods_%msGroup20%
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
if not %msGroup01%==unused echo a %msGroup01%
if not %msGroup02%==unused echo b %msGroup02%
if not %msGroup03%==unused echo c %msGroup03%
if not %msGroup04%==unused echo d %msGroup04%
if not %msGroup05%==unused echo e %msGroup05%
if not %msGroup06%==unused echo f %msGroup06%
if not %msGroup07%==unused echo g %msGroup07%
if not %msGroup08%==unused echo h %msGroup08%
if not %msGroup09%==unused echo i %msGroup09%
if not %msGroup10%==unused echo j %msGroup10%
if not %msGroup11%==unused echo k %msGroup11%
if not %msGroup12%==unused echo l %msGroup12%
if not %msGroup13%==unused echo m %msGroup13%
if not %msGroup14%==unused echo n %msGroup14%
if not %msGroup15%==unused echo o %msGroup15%
if not %msGroup16%==unused echo p %msGroup16%
if not %msGroup17%==unused echo q %msGroup17%
if not %msGroup18%==unused echo r %msGroup18%
if not %msGroup19%==unused echo s %msGroup19%
if not %msGroup20%==unused echo t %msGroup20%
rem =============================================================================
rem No Mod Groups defined
rem =============================================================================
if %msGroupCount% equ 0 goto noGroup
rem =============================================================================
rem Only one Mod Group defined
rem =============================================================================
if %msGroupCount% equ 1 goto oneGroup
rem =============================================================================
rem Select next group
rem =============================================================================
echo.
echo The current Mod Group is %msCurrentGroup%
echo.
echo Which Mod Group to use next:
echo.
choice /C abcdefghijklmnopqrst /N /M "(a) (b) (c) (d) (e) (f) (g) (h) (i) (j) (k) (l) (m) (n) (o) (p) (q) (r) (s) (t)"
if errorlevel 20 set msNextGroup=%msGroup20% & set msNextFolder=_mods_%msGroup20%
if errorlevel 19 set msNextGroup=%msGroup19% & set msNextFolder=_mods_%msGroup19%
if errorlevel 18 set msNextGroup=%msGroup18% & set msNextFolder=_mods_%msGroup18%
if errorlevel 17 set msNextGroup=%msGroup17% & set msNextFolder=_mods_%msGroup17%
if errorlevel 16 set msNextGroup=%msGroup16% & set msNextFolder=_mods_%msGroup16%
if errorlevel 15 set msNextGroup=%msGroup15% & set msNextFolder=_mods_%msGroup15%
if errorlevel 14 set msNextGroup=%msGroup14% & set msNextFolder=_mods_%msGroup14%
if errorlevel 13 set msNextGroup=%msGroup13% & set msNextFolder=_mods_%msGroup13%
if errorlevel 12 set msNextGroup=%msGroup12% & set msNextFolder=_mods_%msGroup12%
if errorlevel 11 set msNextGroup=%msGroup11% & set msNextFolder=_mods_%msGroup11%
if errorlevel 10 set msNextGroup=%msGroup10% & set msNextFolder=_mods_%msGroup10%
if errorlevel 9 set msNextGroup=%msGroup09% & set msNextFolder=_mods_%msGroup09%
if errorlevel 8 set msNextGroup=%msGroup08% & set msNextFolder=_mods_%msGroup08%
if errorlevel 7 set msNextGroup=%msGroup07% & set msNextFolder=_mods_%msGroup07%
if errorlevel 6 set msNextGroup=%msGroup06% & set msNextFolder=_mods_%msGroup06%
if errorlevel 5 set msNextGroup=%msGroup05% & set msNextFolder=_mods_%msGroup05%
if errorlevel 4 set msNextGroup=%msGroup04% & set msNextFolder=_mods_%msGroup04%
if errorlevel 3 set msNextGroup=%msGroup03% & set msNextFolder=_mods_%msGroup03%
if errorlevel 2 set msNextGroup=%msGroup02% & set msNextFolder=_mods_%msGroup02%
if errorlevel 1 set msNextGroup=%msGroup01% & set msNextFolder=_mods_%msGroup01%
rem =============================================================================
rem Check if unused Mod Group slot is selected
rem =============================================================================
if not %msNextGroup%==unused goto goSwitch
echo %date% %time% - ModSwapSwitcher - Validation: Selected unused Mod Group: %msNextGroup%>> %msLog%
cls
echo -- ModSwap Switcher v%msVer% --
echo.
echo.
echo You have selected an unused Mod Group.
echo Please select again.
goto redoNext
:clearForNext
cls
echo -- ModSwap Switcher v%msVer% --
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
echo -- ModSwap Switcher v%msVer% --
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
if %msQuick%==1 goto quick02
pause
:quick02
if %msQuick%==1 timeout 4
echo %date% %time% - ModSwapSwitcher - Switcher Closed E290>> %msLog% & exit
rem #########
rem Exit E290
rem #########
:noData
echo %date% %time% - ModSwapSwitcher - Validation: Data file not found>> %msLog%
cls
echo -- ModSwap Switcher v%msVer% --
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
echo %date% %time% - ModSwapSwitcher - Validation: %msFolderCount% folders found>> %msLog%
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
