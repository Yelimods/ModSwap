@echo off
color 72
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
rem exit codes are E110 to E195
if %msQuick%==1 goto quick01
rem =============================================================================
rem Introduction
rem =============================================================================
cls
echo -- ModSwap Builder v%msVer% --
echo.
echo.
echo          ##########################################
echo          #                                        #
echo          #            ModSwap Builder             #
echo          #                                        #
echo          #       Copyright (c) 2015 Yelibam       #
echo          #    www.fs-uk.com - yelimods@mail.com   #
echo          #                                        #
echo          #    for Farming Simulator 2013 and 15   #
echo          #               by Giants                #
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
echo %date% %time% - ModSwapBuilder - © 2015 Yelibam at www.fs-uk.com - yelimods@mail.com>> %msLog%
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
set msGroup01=unused
set /p msGroup01="Enter name of Mod Group 1: "
set msGroup01="%msGroup01:&=%"
set msGroup01="%msGroup01:/=%"
set msGroup01=%msGroup01: =%
set msGroup01=%msGroup01:"=%
if not %msGroup01%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 1 %msGroup01%>> %msLog%
set msGroup02=unused
set /p msGroup02="Enter name of Mod Group 2: "
set msGroup02="%msGroup02:&=%"
set msGroup02="%msGroup02:/=%"
set msGroup02=%msGroup02: =%
set msGroup02=%msGroup02:"=%
if not %msGroup02%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 2 %msGroup02%>> %msLog%
set msGroup03=unused
set /p msGroup03="Enter name of Mod Group 3: "
set msGroup03="%msGroup03:&=%"
set msGroup03="%msGroup03:/=%"
set msGroup03=%msGroup03: =%
set msGroup03=%msGroup03:"=%
if not %msGroup03%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 3 %msGroup03%>> %msLog%
set msGroup04=unused
set /p msGroup04="Enter name of Mod Group 4: "
set msGroup04="%msGroup04:&=%"
set msGroup04="%msGroup04:/=%"
set msGroup04=%msGroup04: =%
set msGroup04=%msGroup04:"=%
if not %msGroup04%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 4 %msGroup04%>> %msLog%
set msGroup05=unused
set /p msGroup05="Enter name of Mod Group 5: "
set msGroup05="%msGroup05:&=%"
set msGroup05="%msGroup05:/=%"
set msGroup05=%msGroup05: =%
set msGroup05=%msGroup05:"=%
if not %msGroup05%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 5 %msGroup05%>> %msLog%
set msGroup06=unused
set /p msGroup06="Enter name of Mod Group 6: "
set msGroup06="%msGroup06:&=%"
set msGroup06="%msGroup06:/=%"
set msGroup06=%msGroup06: =%
set msGroup06=%msGroup06:"=%
if not %msGroup06%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 6 %msGroup06%>> %msLog%
set msGroup07=unused
set /p msGroup07="Enter name of Mod Group 7: "
set msGroup07="%msGroup07:&=%"
set msGroup07="%msGroup07:/=%"
set msGroup07=%msGroup07: =%
set msGroup07=%msGroup07:"=%
if not %msGroup07%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 7 %msGroup07%>> %msLog%
set msGroup08=unused
set /p msGroup08="Enter name of Mod Group 8: "
set msGroup08="%msGroup08:&=%"
set msGroup08="%msGroup08:/=%"
set msGroup08=%msGroup08: =%
set msGroup08=%msGroup08:"=%
if not %msGroup08%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 8 %msGroup08%>> %msLog%
set msGroup09=unused
set /p msGroup09="Enter name of Mod Group 9: "
set msGroup09="%msGroup09:&=%"
set msGroup09="%msGroup09:/=%"
set msGroup09=%msGroup09: =%
set msGroup09=%msGroup09:"=%
if not %msGroup09%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 9 %msGroup09%>> %msLog%
set msGroup10=unused
set /p msGroup10="Enter name of Mod Group 10: "
set msGroup10="%msGroup10:&=%"
set msGroup10="%msGroup10:/=%"
set msGroup10=%msGroup10: =%
set msGroup10=%msGroup10:"=%
if not %msGroup10%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 10 %msGroup10%>> %msLog%
set /p msGroup11="Enter name of Mod Group 11: "
set msGroup11="%msGroup11:&=%"
set msGroup11="%msGroup11:/=%"
set msGroup11=%msGroup11: =%
set msGroup11=%msGroup11:"=%
if not %msGroup11%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 11 %msGroup11%>> %msLog%
set msGroup12=unused
set /p msGroup12="Enter name of Mod Group 12: "
set msGroup12="%msGroup12:&=%"
set msGroup12="%msGroup12:/=%"
set msGroup12=%msGroup12: =%
set msGroup12=%msGroup12:"=%
if not %msGroup12%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 12 %msGroup12%>> %msLog%
set msGroup13=unused
set /p msGroup13="Enter name of Mod Group 13: "
set msGroup13="%msGroup13:&=%"
set msGroup13="%msGroup13:/=%"
set msGroup13=%msGroup13: =%
set msGroup13=%msGroup13:"=%
if not %msGroup13%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 13 %msGroup13%>> %msLog%
set msGroup14=unused
set /p msGroup14="Enter name of Mod Group 14: "
set msGroup14="%msGroup14:&=%"
set msGroup14="%msGroup14:/=%"
set msGroup14=%msGroup14: =%
set msGroup14=%msGroup14:"=%
if not %msGroup14%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 14 %msGroup14%>> %msLog%
set msGroup15=unused
set /p msGroup15="Enter name of Mod Group 15: "
set msGroup15="%msGroup15:&=%"
set msGroup15="%msGroup15:/=%"
set msGroup15=%msGroup15: =%
set msGroup15=%msGroup15:"=%
if not %msGroup15%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 15 %msGroup15%>> %msLog%
set msGroup16=unused
set /p msGroup16="Enter name of Mod Group 16: "
set msGroup16="%msGroup16:&=%"
set msGroup16="%msGroup16:/=%"
set msGroup16=%msGroup16: =%
set msGroup16=%msGroup16:"=%
if not %msGroup16%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 16 %msGroup16%>> %msLog%
set msGroup17=unused
set /p msGroup17="Enter name of Mod Group 17: "
set msGroup17="%msGroup17:&=%"
set msGroup17="%msGroup17:/=%"
set msGroup17=%msGroup17: =%
set msGroup17=%msGroup17:"=%
if not %msGroup17%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 17 %msGroup17%>> %msLog%
set msGroup18=unused
set /p msGroup18="Enter name of Mod Group 18: "
set msGroup18="%msGroup18:&=%"
set msGroup18="%msGroup18:/=%"
set msGroup18=%msGroup18: =%
set msGroup18=%msGroup18:"=%
if not %msGroup18%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 18 %msGroup18%>> %msLog%
set msGroup19=unused
set /p msGroup19="Enter name of Mod Group 19: "
set msGroup19="%msGroup19:&=%"
set msGroup19="%msGroup19:/=%"
set msGroup19=%msGroup19: =%
set msGroup19=%msGroup19:"=%
if not %msGroup19%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 19 %msGroup19%>> %msLog%
set msGroup20=unused
set /p msGroup20="Enter name of Mod Group 20: "
set msGroup20="%msGroup20:&=%"
set msGroup20="%msGroup20:/=%"
set msGroup20=%msGroup20: =%
set msGroup20=%msGroup20:"=%
if not %msGroup20%==unused set /a msGroupCount+=1
echo %date% %time% - ModSwapBuilder - Defined Mod Group 20 %msGroup20%>> %msLog%
rem =============================================================================
rem Check Mod Groups are correct
rem =============================================================================
cls
echo -- ModSwap Builder v%msVer% --
echo.
echo.
echo Your chosen Mod Groups are as follows:
echo.
echo  %msGroup01%
echo  %msGroup02%
echo  %msGroup03%
echo  %msGroup04%
echo  %msGroup05%
echo  %msGroup06%
echo  %msGroup07%
echo  %msGroup08%
echo  %msGroup09%
echo  %msGroup10%

echo  %msGroup11%
echo  %msGroup12%
echo  %msGroup13%
echo  %msGroup14%
echo  %msGroup15%
echo  %msGroup16%
echo  %msGroup17%
echo  %msGroup18%
echo  %msGroup19%
echo  %msGroup20%
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
if not %msGroup01%==unused echo %msGroup01%
if not %msGroup02%==unused echo %msGroup02%
if not %msGroup03%==unused echo %msGroup03%
if not %msGroup04%==unused echo %msGroup04%
if not %msGroup05%==unused echo %msGroup05%
if not %msGroup06%==unused echo %msGroup06%
if not %msGroup07%==unused echo %msGroup07%
if not %msGroup08%==unused echo %msGroup08%
if not %msGroup09%==unused echo %msGroup09%
if not %msGroup10%==unused echo %msGroup10%
if not %msGroup11%==unused echo %msGroup11%
if not %msGroup12%==unused echo %msGroup12%
if not %msGroup13%==unused echo %msGroup13%
if not %msGroup14%==unused echo %msGroup14%
if not %msGroup15%==unused echo %msGroup15%
if not %msGroup16%==unused echo %msGroup16%
if not %msGroup17%==unused echo %msGroup17%
if not %msGroup18%==unused echo %msGroup18%
if not %msGroup19%==unused echo %msGroup19%
if not %msGroup20%==unused echo %msGroup20%
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

if not %msGroup01%==unused (
	md _mods_%msGroup01%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup01%>> %msLog%
	echo >"_mods_%msGroup01%\%msGroup01% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup01%\%msGroup01% mods>> %msLog%
	)
if not %msGroup02%==unused (
	md _mods_%msGroup02%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup02%>> %msLog%
	echo >"_mods_%msGroup02%\%msGroup02% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup02%\%msGroup02% mods>> %msLog%
	)
if not %msGroup03%==unused (
	md _mods_%msGroup03%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup03%>> %msLog%
	echo >"_mods_%msGroup03%\%msGroup03% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup03%\%msGroup03% mods>> %msLog%
	)
if not %msGroup04%==unused (
	md _mods_%msGroup04%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup04%>> %msLog%
	echo >"_mods_%msGroup04%\%msGroup04% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup04%\%msGroup04% mods>> %msLog%
	)
if not %msGroup05%==unused (
	md _mods_%msGroup05%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup05%>> %msLog%
	echo >"_mods_%msGroup05%\%msGroup05% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup05%\%msGroup05% mods>> %msLog%
	)
if not %msGroup06%==unused (
	md _mods_%msGroup06%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup06%>> %msLog%
	echo >"_mods_%msGroup06%\%msGroup06% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup06%\%msGroup06% mods>> %msLog%
	)
if not %msGroup07%==unused (
	md _mods_%msGroup07%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup07%>> %msLog%
	echo >"_mods_%msGroup07%\%msGroup07% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup07%\%msGroup07% mods>> %msLog%
	)
if not %msGroup08%==unused (
	md _mods_%msGroup08%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup08%>> %msLog%
	echo >"_mods_%msGroup08%\%msGroup08% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup08%\%msGroup08% mods>> %msLog%
	)
if not %msGroup09%==unused (
	md _mods_%msGroup09%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup09%>> %msLog%
	echo >"_mods_%msGroup09%\%msGroup09% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup09%\%msGroup09% mods>> %msLog%
	)
if not %msGroup10%==unused (
	md _mods_%msGroup10%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup10%>> %msLog%
	echo >"_mods_%msGroup10%\%msGroup10% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup10%\%msGroup10% mods>> %msLog%
	)

if not %msGroup11%==unused (
	md _mods_%msGroup11%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup11%>> %msLog%
	echo >"_mods_%msGroup11%\%msGroup11% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup11%\%msGroup11% mods>> %msLog%
	)
if not %msGroup12%==unused (
	md _mods_%msGroup12%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup12%>> %msLog%
	echo >"_mods_%msGroup12%\%msGroup12% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup12%\%msGroup12% mods>> %msLog%
	)
if not %msGroup13%==unused (
	md _mods_%msGroup13%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup13%>> %msLog%
	echo >"_mods_%msGroup13%\%msGroup13% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup13%\%msGroup13% mods>> %msLog%
	)
if not %msGroup14%==unused (
	md _mods_%msGroup14%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup14%>> %msLog%
	echo >"_mods_%msGroup14%\%msGroup14% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup14%\%msGroup14% mods>> %msLog%
	)
if not %msGroup15%==unused (
	md _mods_%msGroup15%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup15%>> %msLog%
	echo >"_mods_%msGroup15%\%msGroup15% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup15%\%msGroup15% mods>> %msLog%
	)
if not %msGroup16%==unused (
	md _mods_%msGroup16%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup16%>> %msLog%
	echo >"_mods_%msGroup16%\%msGroup16% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup16%\%msGroup16% mods>> %msLog%
	)
if not %msGroup17%==unused (
	md _mods_%msGroup17%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup17%>> %msLog%
	echo >"_mods_%msGroup17%\%msGroup17% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup17%\%msGroup17% mods>> %msLog%
	)
if not %msGroup18%==unused (
	md _mods_%msGroup18%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup18%>> %msLog%
	echo >"_mods_%msGroup18%\%msGroup18% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup18%\%msGroup18% mods>> %msLog%
	)
if not %msGroup19%==unused (
	md _mods_%msGroup19%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup19%>> %msLog%
	echo >"_mods_%msGroup19%\%msGroup19% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup19%\%msGroup19% mods>> %msLog%
	)
if not %msGroup20%==unused (
	md _mods_%msGroup20%
	echo %date% %time% - ModSwapBuilder - Created new Mod Group folder: _mods_%msGroup20%>> %msLog%
	echo >"_mods_%msGroup20%\%msGroup20% mods"
rem 	echo %date% %time% - ModSwapBuilder - Created file: _mods_%msGroup20%\%msGroup20% mods>> %msLog%
	)

ren _mods_%msGroup01% mods
echo %date% %time% - ModSwapBuilder - Mod Group folder _mods_%msGroup01% set as current mods folder>> %msLog%
rem add validation that folders were created
rem =============================================================================
rem Summary
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
if %msQuick%==1 goto quick03
pause
:quick03
if %msQuick%==1 timeout 4
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
