@echo off
color 72
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
rem exit codes are E110 to E195
if %msQuick%==1 goto quick01
rem =============================================================================
rem Introduction
rem =============================================================================
cls
echo.
echo          ##########################################
echo          #                                        #
echo          #            ModSwap Builder             #
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
echo ModSwap Builder will enable you to create up to 10 separate Mod Groups.
echo You can then use ModSwap Switcher to switch between them with ease.
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
echo -- ModSwap Builder v%msVer% --
echo.
echo.
echo ModSwap log file not found.
echo %date% %time% - ModSwapBuilder - Log file not found> %msLog%
echo %date% %time% - ModSwapBuilder - New log file Started>> %msLog%
echo %date% %time% - ModSwapBuilder - The ModSwap Project for: Farming Simulator by Giants Software>> %msLog%
echo %date% %time% - ModSwapBuilder - © 2014 Yelibam at www.fs-uk.com - yelimods@mail.com>> %msLog%
echo.
echo New log file started: ModSwapLog.dat
echo.
pause
:oldlog
echo.>> %msLog%
echo %date% %time% - ModSwapBuilder - Builder Opened>> %msLog%
echo %date% %time% - ModSwapBuilder - Builder version %msVer%>> %msLog%
if %msQuick% equ 1 echo %date% %time% - ModSwapBuilder - Quick Mode is On>> %msLog%
if %msQuick%==1 goto quick02
rem =============================================================================
rem Ready to start?
rem =============================================================================
cls
echo -- ModSwap Builder v%msVer% --
echo.
echo.
echo You can create up to ten Mod Groups with this program.
echo.
echo You will be prompted to enter the names of your new Mod Groups.
echo Please use only letters and numbers, and no spaces.
echo.
echo After you have typed each name press 'Enter'.
echo.
echo If there are any unused slots leave them blank and press 'Enter' to continue.
echo.
echo Are you ready to begin?
echo If No: Builder will close and you will need to run it again.
echo.
choice /C YN /N /M "(Y)es or (N)o"
if errorlevel 2 echo %date% %time% - ModSwapBuilder - Builder Closed E110>> %msLog% & exit
rem #########
rem Exit E110
rem #########
:quick02
rem =============================================================================
rem Enter Mod Groups
rem =============================================================================
cls
echo -- ModSwap Builder v%msVer% --
echo.
rem add validation to check for duplicate group names
rem add further validation for incompatible symbols
echo.
set /a msGroupCount=0
set msGroup1=unused
set /p msGroup1="Enter name of Mod Group 1: "
set msGroup1="%msGroup1:&=%"
set msGroup1="%msGroup1:/=%"
set msGroup1=%msGroup1: =%
set msGroup1=%msGroup1:"=%
set /a msGroupCount=0
if not %msGroup1%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 1 %msGroup1%>> %msLog%
set msGroup2=unused
set /p msGroup2="Enter name of Mod Group 2: "
set msGroup2="%msGroup2:&=%"
set msGroup2="%msGroup2:/=%"
set msGroup2=%msGroup2: =%
set msGroup2=%msGroup2:"=%
if not %msGroup2%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 2 %msGroup2%>> %msLog%
set msGroup3=unused
set /p msGroup3="Enter name of Mod Group 3: "
set msGroup3="%msGroup3:&=%"
set msGroup3="%msGroup3:/=%"
set msGroup3=%msGroup3: =%
set msGroup3=%msGroup3:"=%
if not %msGroup3%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 3 %msGroup3%>> %msLog%
set msGroup4=unused
set /p msGroup4="Enter name of Mod Group 4: "
set msGroup4="%msGroup4:&=%"
set msGroup4="%msGroup4:/=%"
set msGroup4=%msGroup4: =%
set msGroup4=%msGroup4:"=%
if not %msGroup4%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 4 %msGroup4%>> %msLog%
set msGroup5=unused
set /p msGroup5="Enter name of Mod Group 5: "
set msGroup5="%msGroup5:&=%"
set msGroup5="%msGroup5:/=%"
set msGroup5=%msGroup5: =%
set msGroup5=%msGroup5:"=%
if not %msGroup5%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 5 %msGroup5%>> %msLog%
set msGroup6=unused
set /p msGroup6="Enter name of Mod Group 6: "
set msGroup6="%msGroup6:&=%"
set msGroup6="%msGroup6:/=%"
set msGroup6=%msGroup6: =%
set msGroup6=%msGroup6:"=%
if not %msGroup6%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 6 %msGroup6%>> %msLog%
set msGroup7=unused
set /p msGroup7="Enter name of Mod Group 7: "
set msGroup7="%msGroup7:&=%"
set msGroup7="%msGroup7:/=%"
set msGroup7=%msGroup7: =%
set msGroup7=%msGroup7:"=%
if not %msGroup7%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 7 %msGroup7%>> %msLog%
set msGroup8=unused
set /p msGroup8="Enter name of Mod Group 8: "
set msGroup8="%msGroup8:&=%"
set msGroup8="%msGroup8:/=%"
set msGroup8=%msGroup8: =%
set msGroup8=%msGroup8:"=%
if not %msGroup8%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 8 %msGroup8%>> %msLog%
set msGroup9=unused
set /p msGroup9="Enter name of Mod Group 9: "
set msGroup9="%msGroup9:&=%"
set msGroup9="%msGroup9:/=%"
set msGroup9=%msGroup9: =%
set msGroup9=%msGroup9:"=%
if not %msGroup9%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 9 %msGroup9%>> %msLog%
set msGroup0=unused
set /p msGroup0="Enter name of Mod Group 0: "
set msGroup0="%msGroup0:&=%"
set msGroup0="%msGroup0:/=%"
set msGroup0=%msGroup0: =%
set msGroup0=%msGroup0:"=%
if not %msGroup0%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 0 %msGroup0%>> %msLog%
rem =============================================================================
rem Page 5 - Check Mod Groups are correct
rem =============================================================================
cls
echo -- ModSwap Builder v%msVer% --
echo.
echo.
echo Your chosen Mod Groups are as follows:
echo.
echo  %msGroup1%
echo  %msGroup2%
echo  %msGroup3%
echo  %msGroup4%
echo  %msGroup5%
echo  %msGroup6%
echo  %msGroup7%
echo  %msGroup8%
echo  %msGroup9%
echo  %msGroup0%
rem =============================================================================
rem No Mod Groups
rem =============================================================================
if %msGroupCount% equ 0 goto noGroup
rem =============================================================================
rem Only one Mod Group
rem =============================================================================
if %msGroupCount% equ 1 goto oneGroup
rem =============================================================================
rem Confirm Mod Groups
rem =============================================================================
echo %date% %time% - ModSwapBuilder - Mod Groups correctly defined: %msGroupCount% Mod Groups>> %msLog%
echo.
echo Is this correct?
echo.
choice /C YN /N /M "(Y)es or (N)o"
if errorlevel 2 echo %date% %time% - ModSwapBuilder - Mod Group entry aborted>> %msLog% & goto quick02
cls
echo -- ModSwap Builder v%msVer% --
rem =============================================================================
rem Save list of Mod Groups to file, stripping off unused group slots
rem =============================================================================
(
if not %msGroup1%==unused echo %msGroup1%
if not %msGroup2%==unused echo %msGroup2%
if not %msGroup3%==unused echo %msGroup3%
if not %msGroup4%==unused echo %msGroup4%
if not %msGroup5%==unused echo %msGroup5%
if not %msGroup6%==unused echo %msGroup6%
if not %msGroup7%==unused echo %msGroup7%
if not %msGroup8%==unused echo %msGroup8%
if not %msGroup9%==unused echo %msGroup9%
if not %msGroup0%==unused echo %msGroup0%
)> %msData%
echo %date% %time% - ModSwapBuilder - Mod Group names saved to ModSwapData.dat>> %msLog%
if %msQuick%==1 goto quick02
rem =============================================================================
rem Info
rem =============================================================================
echo.
echo.
echo Your choices have been saved.
echo.
echo Next your new Mod Group folders will be created.
echo.
pause
cls
echo -- ModSwap Builder v%msVer% --
:quick02
rem =============================================================================
rem Back up original mods folder and create new folders for Mod Groups
rem =============================================================================
rem add function to Recognise and backup all existing mods folders
ren mods #Mods_Old
echo >"#Mods_Old\Old mods"
echo %date% %time% - ModSwapBuilder - Original mods folder backed up to #Mods_Old>> %msLog%
if not %msGroup1%==unused (
	md _mods_%msGroup1%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup1%>> %msLog%
	echo >"_mods_%msGroup1%\%msGroup1% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup1%\%msGroup1% mods>> %msLog%
	)
if not %msGroup2%==unused (
	md _mods_%msGroup2%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup2%>> %msLog%
	echo >"_mods_%msGroup2%\%msGroup2% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup2%\%msGroup2% mods>> %msLog%
	)
if not %msGroup3%==unused (
	md _mods_%msGroup3%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup3%>> %msLog%
	echo >"_mods_%msGroup3%\%msGroup3% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup3%\%msGroup3% mods>> %msLog%
	)
if not %msGroup4%==unused (
	md _mods_%msGroup4%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup4%>> %msLog%
	echo >"_mods_%msGroup4%\%msGroup4% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup4%\%msGroup4% mods>> %msLog%
	)
if not %msGroup5%==unused (
	md _mods_%msGroup5%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup5%>> %msLog%
	echo >"_mods_%msGroup5%\%msGroup5% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup5%\%msGroup5% mods>> %msLog%
	)
if not %msGroup6%==unused (
	md _mods_%msGroup6%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup6%>> %msLog%
	echo >"_mods_%msGroup6%\%msGroup6% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup6%\%msGroup6% mods>> %msLog%
	)
if not %msGroup7%==unused (
	md _mods_%msGroup7%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup7%>> %msLog%
	echo >"_mods_%msGroup7%\%msGroup7% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup7%\%msGroup7% mods>> %msLog%
	)
if not %msGroup8%==unused (
	md _mods_%msGroup8%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup8%>> %msLog%
	echo >"_mods_%msGroup8%\%msGroup8% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup8%\%msGroup8% mods>> %msLog%
	)
if not %msGroup9%==unused (
	md _mods_%msGroup9%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup9%>> %msLog%
	echo >"_mods_%msGroup9%\%msGroup9% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup9%\%msGroup9% mods>> %msLog%
	)
if not %msGroup0%==unused (
	md _mods_%msGroup0%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup0%>> %msLog%
	echo >"_mods_%msGroup0%\%msGroup0% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup0%\%msGroup0% mods>> %msLog%
	)
ren _mods_%msGroup1% mods
echo %date% %time% - ModSwapBuilder - Mod Group folder _mods_%msGroup1% set as current mods folder>> %msLog%
rem add validation that folders were created
rem =============================================================================
rem Page 7 - Summary
rem =============================================================================
echo.
echo.
echo Your existing current mods have been backed up to the folder: #Mods_Old
echo Your new Mod Group folders have been created.
echo Your first choice of Mod Group has been set as the current mods folder.
echo In each new folder you will find a file indicating the contents.
echo.
echo Now you can sort out your mods and move them into the correct folders.
echo Then you can use ModSwap Switcher to switch between your Mod Group folders.
echo.
echo.
echo          ##########################################
echo          #                                        #
echo          #            ModSwap Builder             #
echo          #                                        #
echo          #    Thank you for using this program    #
echo          #                                        #
echo          ##########################################
echo.
echo ModSwap Builder will now close.
echo.
echo %date% %time% - ModSwapBuilder - Builder Completed>> %msLog%
pause
echo %date% %time% - ModSwapBuilder - Builder Closed E190>> %msLog% & exit
rem #########
rem Exit E190
rem #########
:noGroup
echo %date% %time% - ModSwapBuilder - Validation: %msGroupCount% Mod Groups defined>> %msLog%
echo.
echo No Mod Groups were found.
echo.
echo Please run ModSwap Builder again to create your Mod Groups.
echo.
echo ModSwap Builder will now close.
echo.
pause
echo %date% %time% - ModSwapBuilder - Builder Closed E130>> %msLog% & exit
rem #########
rem Exit E130
rem #########
:oneGroup
echo %date% %time% - ModSwapBuilder - Validation: %msGroupCount% Mod Group defined>> %msLog%
echo.
echo Only one Mod Group was found.
echo You need to have two or more in order to switch them.
echo.
echo Please run ModSwap Builder again to create your Mod Groups.
echo.
echo ModSwap Builder will now close.
echo.
pause
echo %date% %time% - ModSwapBuilder - Builder Closed E150>> %msLog% & exit
rem #########
rem Exit E150
rem #########
