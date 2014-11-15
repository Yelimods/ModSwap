The ModSwap Project for: Farming Simulator by Giants Software
Copyright © 2014 Yelibam at www.fs-uk.com - yelimods@mail.com

ModSwap ReadMe
==============

About ModSwap
-------------
ModSwap is not an in-game mod.  It is a program to assist in file management for the in-game mods that you already have.  ModSwap is designed to work with Farming Simulator 2013.  Because of the similar file structure it should also work with versions 2011 and 2009, but this has not yet been tested.
The primary function of ModSwap is to enable you to create several groups of in-game mods (Mod Groups), then switch between these groups easily, according to which map or style you wish to play.  If you wish to test mods in a clean mods folder, or with different key mods such as Forestry, Soil Mod, or MR, then ModSwap will enable you to do this with ease.
ModSwap is an ongoing project.  In the current version ModSwap consists primarily of two Windows Scripting files: Builder and Switcher.  These are like the old style Windows Batch files, but have enhanced functions and commands.  More features will be added in the future.  ModSwap will not work with Mac computers, and will not work with Windows XP or earlier.

Installing ModSwap
------------------
ModSwap is designed to be easy to use, but it will require you to manually copy folders, and move files between folders.  Please follow the basic instructions here to start using ModSwap.

Part 1 Preparation
Firstly, please create a full backup copy of your entire Game Folder.  This is the folder called 'FarmingSimulator2013' and resides within 'My Documents\My Games\'.
Secondly, make a sub-folder called 'My Mods Backup' and make a backup copy of your default Mods Folder in that new sub-folder.
If you already have additional mods folders please move them all into your sub-folder 'My Mods Backup', leaving just the default Mods Folder.  Later you will be able to move the mods files into the new Mod Group folders.

Part 2 Installation
Place the ModSwap zip file in the Game Folder and extract all the files into the folder: ModSwap_vx.x .  Select 'Extract to Folder', not 'Extract Here'.  Then check that the files are not in a nested sub-folder.
You can now safely delete the ModSwap zip folder.
The three files ending in .cmd are the important files for ModSwap:
•	ModSwap Menu is your starting point for launching all other files
•	ModSwap Builder is used to define your Mod Groups and create the folders
•	ModSwap Switcher is used for switching between the Mod Groups
If you wish you can create a shortcut to ModSwapMenu.cmd on your desktop, to make it even quicker and easier to switch your Mod Groups.
Right click on ModSwapMenu.cmd and select 'Send to' from the pop-up menu.  Then click on 'Desktop (create shortcut)'.
Later, you may like to create a shortcut to ModSwap Switcher, as this is the most used part of ModSwap.  It is possible to run it directly without going through the Menu.

Running ModSwap
---------------
You will normally start ModSwap by running the ModSwap Menu.  On first use you must run ModSwap Menu as it sets up other files for use by ModSwap.
You can run ModSwap Menu either from the shortcut on your desktop, or directly from the .cmd file.  Just double-click either one.  The on-screen instructions should be self-explanatory.
On the first use Menu will create a Log File in the ModSwap folder: ModSwapLog.dat.  This records all important activity by the program, and can be used to diagnose errors.
If a log file already exists, Menu will ask if you want to continue the same log file, or start a new one.  From time to time you should start a new file so that it does not get too long.  If you choose to delete the Log File then it is actually archived in the ModSwap folder.  You can then manually delete these files later.
Once the Log File has been dealt with you come to the menu itself.
You can run ModSwap Builder or ModSwap Switcher from here, go to Settings, or exit ModSwap.
There is currently only one setting: Quick Mode.
Switching on Quick Mode will bypass some of the help, information and choices screens throughout ModSwap, to allow you to navigate more quickly.  However you should only use this once you are familiar with the operation of ModSwap.
In addition, Quick Mode will automatically create a new Log File every time you run ModSwap Menu.

ModSwap Builder
---------------
Before you continue, make sure you have decided on the names of your new Mod Groups.  You could have one group for each farm map you play, or one group for each style of map, e.g. British, European, American.  You could have a separate group for game-changing mods like MR, Forestry, Soil Mod, and it may be a good idea to have a Mod Group that is clear of mods, for testing.  There is a maximum of 10 Mod Groups.
Here is my selection:
•	British & Irish
•	European
•	Scandinavian
•	American
•	MR
•	Cleared
The instructions in Builder for entering the names of your Mod Groups should be self-explanatory.
Once you have created your Mod Groups your original default mods folder will be backed up to #Mods_Old.  All your existing mods will be in here.
Note that your first choice of Mod Group has been set as the new default mods folder.
Be sure that you do not move, delete or rename these folders, or else ModSwap will not work.

Sorting out your Mods
---------------------
Now you have the task of sorting out your existing mods into the appropriate Mod Group folder.  I find that there are a number of mods that I want in several, or all, Mod Groups, e.g. the Kärcher Pressure Washer.  There is no problem in having duplications across Mod Groups.
You can then freely add or remove mods from these folders over time.

ModSwap Switcher
----------------
This will be the most commonly used part of ModSwap as it is here that you can switch between your Mod Groups.  Run the Menu and select ModSwap Switcher to start this part of the program.  Later, when you are more familiar with ModSwap you can run Switcher directly, without going through the Menu.  It is designed with this in mind.  You may wish to create a shortcut to Switcher on your desktop to save having to go into your game folder each time.  
When you run Switcher you will see the now familiar start screen.  Notice that each part of ModSwap has a different text colour.  This is to help you to identify where you are.
Switcher will show you a list of the Mod Groups you created in Builder, and the Group you are currently using.  You simply select the Group you wish to switch to.
If you have made the wrong selection you can go back and select again.  Once you have confirmed your selection, your Mod Groups will be switched, and the selected Group will become the current mods folder for the game.

Validation and Error Checking
-----------------------------
Throughout ModSwap a number of checks are made.  This may be to check the data you have entered, or to check that the Mod Group folders have not been moved or renamed.  It is essential that you do not move, rename or edit any of the files and folders created by ModSwap, as this will mean that it cannot operate.  If ModSwap encounters an error with one of the files or folders it will close, with an explanation  of the problem.  If this happens you will need to move the Mod Group folders to another location, and run Builder again, to create new Mod Groups.

ModSwap Files and Folders
-------------------------
The three program files:
•	ModSwapMenu.cmd
•	ModSwapBuilder.cmd
•	ModSwapSwitcher.cmd
Additional ModSwap files:
•	ModSwapSettings.dat
•	The ModSwap Project Manual.pdf
•	The ModSwap Project Copyright.pdf
•	The ModSwap Project License.pdf
•	ModSwapReadMe.txt
•	ModSwapChangelog.txt
Files that are created by ModSwap:
•	ModSwapLog.dat
•	ModSwapData.dat
All these files are contained within the folder: ModSwap_vx.x.  This resides in your game folder, alongside the mods folder and savegame folders.
New folders created by ModSwap, depending on the choices you make in the program:
•	#Mods_Old
•	_mods_American
•	_mods_Cleared
•	_mods_European
•	_mods_MR
•	_mods_Scandinavian
•	mods
Within each mod Group folder a simple 'nametag' file is created, to indicate the contents of that folder, in case the folders get mixed up in future operations.

Thank You
---------
... for downloading and using ModSwap, I hope that you will find it useful.  It started as a private project, and developed into what it is now, in order to share it with others.
ModSwap is hosted on www.fs-uk.com, and must not be uploaded to any other site.  You may mention ModSwap, but you must provide a link to the files on www.fs-uk.com.
If you have any questions about ModSwap please use the Support Topic  in the forum at www.fs-uk.com.  I will not be answering questions directly by email.
ModSwap will continue to be developed; there will be errors to fix; and further features are planned.  If you have any ideas and suggestions, please let me know through the Support Topic.
Yelibam

ModSwap including all accompanying files and intellectual concept is copyright © 2014 Yelibam - yelimods@mail.com

You are free to share ModSwap:
•	to copy and redistribute the material
•	always link to the original files on www.fs-uk.com
•	do not upload to any other website

Under the following terms:
•	Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
•	Non Commercial — You may not use the material for commercial purposes.
•	No Derivative Works — If you change, transform, or build upon the material, you may not distribute the modified material.
•	No additional restrictions — You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.
