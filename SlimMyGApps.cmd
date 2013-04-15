@echo off
cls
type texts\logogapps.txt
type texts\release.txt
if not exist gapps\*.zip goto NoGApps
type texts\blank.txt
type texts\blank.txt
echo Preparing workspace...
type texts\blank.txt
type texts\blank.txt
if exist gapps-mod\*.zip del gapps-mod\*.zip
if exist gapps-mod\*.zip-MOD del gapps-mod\*.zip-MOD
if exist gapps-mod\*.tmp del gapps-mod\*.tmp
type texts\blank.txt
type texts\blank.txt
echo Copying gapps...
type texts\blank.txt
type texts\blank.txt
cd gapps
for %%f in (*.zip) do xcopy %%f ..\gapps-mod\*.zip-MOD /V /F
cd ..\gapps-mod
for %%f in (*.zip-MOD) do rename %%f *.MOD.zip
if not exist *.zip goto NoGApps2
type ..\texts\blank.txt
type ..\texts\blank.txt
echo Cleaning up gapps...
type ..\texts\blank.txt
if exist cleangapps.txt for %%f in (*.zip) do ..\7z d -ssc %%f @cleangapps.txt
cd ..
goto End
:NoGApps
type texts\blank.txt
echo No GApps in the gapps folder.
goto End
:NoGApps2
type texts\blank.txt
echo No GApps were copied to roms-mod folder.
:End
type texts\blank.txt
echo Press a key to end...
@pause>nul