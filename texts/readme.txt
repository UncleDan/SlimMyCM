[TOOL:CM10.1] SlimMyCM
http://forum.xda-developers.com/showthread.php?t=2222436

CM10.1 on Defy is simply incredible, but it is becoming a really big ROM.

Tired of cleaning the zip each time a new version comes out, I wrote this simple script which uses 7zip to do this for me.

If this can be of some help for someone, I am glad to share.

OBVIOUSLY NO WARRANTY IS GIVEN, USE IT AT YOUR OWN RISK

***

ATTENTION:
As the script deletes also the files which are included in latest GApps pack ("gapps-jb-20130301-signed.zip" when I am writing)
it is highly recommended to flash gapps just after the ROM and before rebooting the phone, specially if you did a full wipe!!!

***

Instructions:
* Unzip the script in a folder
* Place your favourite CM10.1 release (e.g.: "cm-10.1-20130404-NIGHTLY-mb526.zip") in the "roms" subfolder)
* Run SlimMyCM.cmd double clicking on it
* You will find your light version of the release in subfolder roms-mod (e.g.: "cm-10.1-20130404-NIGHTLY-mb526.MOD.zip")
* Flash it and enjoy

To have smaller GApps you can make the same placing gapp pack in "gapps" folder and running "SlimMyGApps.cmd".

***

Download:
http://www.uncledan.it/android-files/SlimMyCM/

***

Notes:
If you find my "diet" too extreme, you can edit the list of the apps which are deleted from the modded zip in "roms-mod/cleanrom.txt" and "roms-mod/cleangapps.txt"

***

Todo:
* Automatically replace Trebuchet with other launcher (e.g. Nova Launcher)
* Automatically replace Superuser.apk with other one (e.g. ClockWorkMod)
* Maybe little build.prop editing

***

All the lists are based on:
- "cm-10.1-20130404-NIGHTLY-mb526.zip" file content
- "gapps-jb-20130301-signed.zip" file content
- "Defy-Gapps-CM10.1-20121201-minimal.zip" file content
- http://wiki.cyanogenmod.org/w/Barebones
- personal experience

***

Credits and thanks:
Quarx for his tireless work
Anternoz for CM10.1 minimal GApps idea
Bill Gates (yes, him!!) for MS-DOS prompt 