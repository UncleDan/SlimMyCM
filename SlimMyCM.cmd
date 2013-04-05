@echo off
cls
if not exist roms\*.zip goto NoRoms
echo .
echo .
echo Preparing workspace...
echo .
echo .
if exist roms-mod\*.zip del roms-mod\*.zip
if exist roms-mod\*.zip-MOD del roms-mod\*.zip-MOD
if exist roms-mod\*.tmp del roms-mod\*.tmp
echo .
echo .
echo Copying roms...
echo .
echo .
cd roms
for %%f in (*.zip) do xcopy %%f ..\roms-mod\*.zip-MOD /V /F
cd ..\roms-mod
for %%f in (*.zip-MOD) do rename %%f *.MOD.zip
if not exist *.zip goto NoRoms2
echo .
echo .
echo Cleaning up roms...
echo .
echo .
if exist cleanrom.txt for %%f in (*.zip) do ..\7z d -ssc %%f @cleanrom.txt
echo .
echo .
echo Cleaning up gapps...
echo .
echo .
if exist cleangapps.txt for %%f in (*.zip) do ..\7z d -ssc %%f @cleangapps.txt
if not exist launcher\*.apk goto NoLauncher
echo .
echo .
echo Cleaning up launcher...
echo .
echo .
if exist cleanlauncher.txt for %%f in (*.zip) do ..\7z d -ssc %%f @cleanlauncher.txt
:NoLauncher
if not exist su\*.apk goto NoSU
echo .
echo .
echo Cleaning up su...
echo .
echo .
if exist cleansu.txt for %%f in (*.zip) do ..\7z d -ssc %%f @cleansu.txt
:NoSU
cd ..
echo .
echo .
echo All done.
goto End
:NoRoms
echo No ROMs in the rom folder.
goto End
:NoRoms2
echo No ROMs were copied to roms-mod folder.
:End
echo Press a key to end...
@pause>nul