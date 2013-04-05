@echo off
cls
if not exist gapps\*.zip goto NoGApps
echo .
echo .
echo Preparing workspace...
echo .
echo .
if exist gapps-mod\*.zip del gapps-mod\*.zip
if exist gapps-mod\*.zip-MOD del gapps-mod\*.zip-MOD
if exist gapps-mod\*.tmp del gapps-mod\*.tmp
echo .
echo .
echo Copying gapps...
echo .
echo .
cd gapps
for %%f in (*.zip) do xcopy %%f ..\gapps-mod\*.zip-MOD /V /F
cd ..\gapps-mod
for %%f in (*.zip-MOD) do rename %%f *.MOD.zip
if not exist *.zip goto NoGApps2
echo .
echo .
echo Cleaning up gapps...
echo .
echo .
if exist cleangapps.txt for %%f in (*.zip) do ..\7z d -ssc %%f @cleangapps.txt
goto End
:NoGApps
echo No GApps in the gapps folder.
:End
echo Press a key to end...
@pause>nul