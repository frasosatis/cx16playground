# cx16playground
Commander X16 playground

Collection of various information around the Commander X16 (tested mostly/only with emulator)

  * Website: https://www.commanderx16.com/
  * Emulator: https://cx16forum.com/forum/viewforum.php?f=30
    * current version: Commander X16 KERNAL and emulator R48
    * Github: https://github.com/X16Community/x16-emulator/releases/tag/r48
  * RefManual: https://github.com/X16Community/x16-docs/blob/master/README.md
  * US Site to buy the hardware: https://texelec.com/product-category/commander-x16/

# x16emu

## obtaining the emulator

See the link in the introduction.

Under Linux, since this is normally not a distribution-provided package,
I use a simple link from /usr/bin/x16 (yes, I am lazy, sorry) to the
local copy of the extracted binary package (e.g. x16emu_linux-x86_64-r48.zip).
Since this requires sudo-rights on the system, another way is of course to
set the local path to the emulator in your environment.

## ASCII listings (good old ones, including line numbering)

Use `x16emu -bas <source>.BAS` to load an ASCII-coded basic file into the emulator.

Make sure that the commands in the file are all in uppercase.

Save the file with `SAVE <source>.PRG` if required.

Use `x16emu -prg <source>.PRG -run` to start the emulator and run it.

See **basic/01-asc_listing** for further examples.

# cc65

