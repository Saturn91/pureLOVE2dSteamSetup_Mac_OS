# Basic Steam setup using löve / love2d

Following this [guide](https://luasteam.readthedocs.io/en/stable/getting_started.html): 

----
| Disclaimer: this is broken on my Mac OS machine, it crashes directly on start...
----

Description of my Issue:

I am currently implementing the luasteam lib into my Project for Mac OS

I got it running flawlessly in windows and later linux, but I hit a wall with Mac OS...

I follow this guide: 
https://luasteam.readthedocs.io/en/stable/getting_started.html

The steps are the following:
download luasteam.so from luasteam
download libsteam_api.dylib from steam itself
put both into the root directory
require(steamlua) in your project
expected -> all good...

How ever... when I start my game in vsCode, it just crashes in the import. I can offer some more infos bellow to narrow it down:
if I remove luasteam.so I get an error: module 'luasteam' not found
conclusion -> file gets found by love if included
if I remove the _libsteam_api.dylib I get an error:
error loading module 'luasteam' from file './luasteam.so'
    dlopen(./luasteam.so 0x0006): Library not loaded: @loader_path/libsteam_api.dylib

conclusion file can get found by love if included

It makes no difference if steam is running or not, it fails before that is an issue...

Any ideas? any help would be highly appreciated!

I attached the two files which do not work for me, maybe some of you can add them to teir project (idealy projects which already work with steam...) and try to run it localy 
/Applications/love.app/Contents/MacOS/love .


Versions:
3.0.0 of luasteam -> https://github.com/uspgamedev/luasteam/releases/tag/v3.0.0
file: osx_luasteam.so
1.58a of steam sdk as this is supposed to work with v3.0.0 of luasteam -> https://partner.steamgames.com/downloads/steamworks_sdk_158a.zip-> file: libsteam_api.dylib

I was able to get it to run for Windows / Linux with another project

The steam_appid.txt contains the steam ID to the free prologue of my game