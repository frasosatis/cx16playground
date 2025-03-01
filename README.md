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

## obtaining the emulator

Some key combinations which might come in handy:

  * F7: DOS "$" - shows the files of the current directory
  * F3: LOAD " - prints out the LOAD statement in the current line
  * F5: RUN - runs the current loaded / entered program
  * Strg+R - reset the emulator

## ASCII listings (good old ones, including line numbering)

Use `x16emu -bas <source>.BAS` to load an ASCII-coded basic file into the emulator.

Make sure that the commands in the file are all in uppercase.

Save the file with `SAVE <source>.PRG` if required.

Use `x16emu -prg <source>.PRG -run` to start the emulator and run it.

See [basic/01-asc_listing](basic/01-asc_listing/README.md) for more information / examples.

# cc65

Whenever a CC65 program has been loaded into the emulator,
**LIST** will only show a line number and some **SYS** command with an address.
Entering **RUN** or pressing **F5** will run the loaded program.
If the program ends normally, while it might still be possible to **LIST** the
single line, entering **RUN** again would only enter the monitor.

Only useful way is to reset the emulator using Strg+R at this point.
