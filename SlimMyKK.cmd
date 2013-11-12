@echo off
cls
type texts\logo.txt
type texts\release.txt
if not exist roms\*.zip goto NoRoms
type texts\blank.txt
type texts\blank.txt
echo Preparing workspace...
type texts\blank.txt
type texts\blank.txt
if exist roms-mod\*.zip del roms-mod\*.zip
if exist roms-mod\*.zip-MOD del roms-mod\*.zip-MOD
if exist roms-mod\*.tmp del roms-mod\*.tmp
type texts\blank.txt
type texts\blank.txt
echo Copying roms...
type texts\blank.txt
type texts\blank.txt
cd roms
for %%f in (*.zip) do xcopy %%f ..\roms-mod\*.zip-MOD /V /F
cd ..\roms-mod
for %%f in (*.zip-MOD) do rename %%f *.MOD.zip
if not exist *.zip goto NoRoms2
type ..\texts\blank.txt
type ..\texts\blank.txt
echo Cleaning up roms...
type ..\texts\blank.txt
type ..\texts\blank.txt
if exist cleanrom.txt for %%f in (*.zip) do ..\7z d -ssc %%f @cleanrom.txt
type ..\texts\blank.txt
type ..\texts\blank.txt
echo Cleaning up gapps...
type ..\texts\blank.txt
type ..\texts\blank.txt
if exist cleangapps.txt for %%f in (*.zip) do ..\7z d -ssc %%f @cleangapps.txt
if not exist launcher\*.apk goto NoLauncher
type ..\texts\blank.txt
type ..\texts\blank.txt
echo Cleaning up launcher...
type ..\texts\blank.txt
type ..\texts\blank.txt
if exist cleanlauncher.txt for %%f in (*.zip) do ..\7z d -ssc %%f @cleanlauncher.txt
:NoLauncher
if not exist su\*.apk goto NoSU
type ..\texts\blank.txt
type ..\texts\blank.txt
echo Cleaning up su...
type ..\texts\blank.txt
type ..\texts\blank.txt
if exist cleansu.txt for %%f in (*.zip) do ..\7z d -ssc %%f @cleansu.txt
:NoSU
cd ..
type texts\blank.txt
echo All done.
goto End
:NoRoms
type texts\blank.txt
echo No ROMs in the rom folder.
goto End
:NoRoms2
type texts\blank.txt
echo No ROMs were copied to roms-mod folder.
:End
type texts\blank.txt
echo Press a key to end...
@pause>nul