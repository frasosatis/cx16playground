# cx16playground
Commander X16 playground

Collection of various information around the Commander X16 (tested mostly/only with emulator)

  * Official Website: https://www.commanderx16.com/
  * Emulator: https://cx16forum.com/forum/viewforum.php?f=30
    * current version: Commander X16 KERNAL and emulator R48
    * Github: https://github.com/X16Community/x16-emulator/releases/tag/r48
  * RefManual: https://github.com/X16Community/x16-docs/blob/master/README.md
  * US Site to buy the hardware: https://texelec.com/product-category/commander-x16/
  * UK Site to buy a nice case: https://lazer3d.com/
  * Assembly language course from SlithyMatt: 
    * Youtube: https://www.youtube.com/watch?v=Y9j_QDqp_fM
    * Github: https://github.com/SlithyMatt/x16-assembly-tutorial
  * prog8 - Another language
    * ReadTheDocs: https://prog8.readthedocs.io/en/latest/index.html
    * Github: https://github.com/irmen/prog8

# What do I have

Personally, I have a Commander X16 Developer Edition with the Developer Edition Upgrade. Mostly for WIFI stuff I have also the Commander X16 921.6Kbps Serial & ESP32 Network Card - which flawlessly allows to "dial into" my Linux server via ssh.

I am also still using the X16 Emulator to make some quick tests without the hardware, which recently happily lives in the official Lazer3D pizza-box case. A riser card (the version for the pizza-box case) was absolutely required to install the serial card in a safe manner into the case.

## Basic, C, Prog8 or Assembler?

Actually, it does not really matter.

Of all the languages, BASIC is the easiest to learn and obviously slowest.
It is already there on the target (or emulator) after powering on so without
much preparation or even loading of some program, you can simply start.

C might be another step, but can have a larger footprint due to usage of its libraries.
It also requires a compiler and linker to create the executable program.

Prog8 is an intermediate language, intense studying of examples and library
sources are probably required. It uses an Assembler to create the final
program.

Assembler is the fastest of all the things and can have the smallest
footprint, depending on how optimized the code is. It is the nearest to the
target-CPU so you need to know a lot about the machine you are programming
for. It is also not very portable between different systems, so if you are
learning 6502 Assembler (e.g. for the Commander X16), you cannot use much
of the knowlege if you later want to target some ARM or other processor.

# x16emu / cc65 toolset

## obtaining the emulator (and Compiler / Assembler)

See the link in the introduction.

Under Linux, since this is normally not a distribution-provided package,
I used a simple link from /usr/bin/x16 (yes, I am lazy, sorry) to the
local copy of the extracted binary package. Since this requires sudo-rights
on the system, another way is of course to set the local path to the emulator in your environment.

A better way is to follow the instructions of the Assembler tutorial which details how to get cc65 (Assembler / C Compiler) and x16emu (the Emulator).

## keys inside the emulator

Some key combinations which might come in handy:

  * F7: DOS "$" - shows the files of the current directory
  * F3: LOAD " - prints out the LOAD statement in the current line
  * F5: RUN - runs the current loaded / entered program
  * Strg+R - reset the emulator

## ASCII listings (good old ones, including line numbering)

Use `x16emu -bas <source>.BAS` on the host machine to load an ASCII-coded basic file into the emulator.

Make sure that the commands in the file are all in uppercase.

Save the file (inside the emulator) with `SAVE <source>.PRG` if required.

On the host, use `x16emu -prg <source>.PRG -run` to start the emulator and run it.

See [basic/01-asc-listing](basic/01-asc-listing/README.md) for more information / examples.

# cc65

Whenever a CC65 program has been loaded into the emulator,
**LIST** will only show a line number and some **SYS** command with an address.
Entering **RUN** or pressing **F5** will run the loaded program.
If the program ends normally, while it might still be possible to **LIST** the
single line, entering **RUN** again would only enter the monitor.

Only useful way is to reset the emulator using Strg+R at this point.

# Assembler

See [asm/](asm/README.md) for more information / examples.

# Prog8

See [prog8/](prog8/README.md) for more information / examples.
