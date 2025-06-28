# BASIC ASCII listing

These can easily be created on a host computer under Windows(tm), Linux or Mac.
Since it contains mostly ASCII characters, it can be freely edited with
whatever editor is preferred. This is the "original" way of BASIC with line
numbers and stuff.

With `x16emu -bas <file>.bas` it is loaded into the X16(emu) and then listed
automatically on the screen. For longer listings, this might take a while so
it might be a good idea to save the binary BASIC file inside of the emulator.

## bas2prg.sh

The bash shell script `./bas2prg.sh` does exactly this by invoking the
X16emu loading a file and saving it as .PRG, so that it can later be loaded
by `x16emu -prg <file>.PRG`. It tries to obtain the location of an installed
x16emu, so it works only if this is existing in the path (see command
`which x16emu`).

## clean.sh

Small bash shell script which simply removes stuff which has been created
by the bas2prg.sh script.

## hello

Use `x16emu -bas hello.bas` to load into the X16(emu).
There, use `RUN` to run the program which does only output some stuff in 40-char mode.

Or, use `x16emu -bas hello.bas -run` to directly start it.
Since it changes the screen to a 40-characters screen, you should note
that the F4 key followed by ENTER allows it to toggle the video mode.

## time

If requiring a valid time on the X16 Emulator, you might need to start it with
setting the realtime clock to the host time, otherwise the time will be always
000000, which might be unexpected.

`x16emu -bas time.bas -run -rtc`
Should load the ASCII listing, run it and simply show the current time.

## wikipedia

Simple example taken from the BASIC wikipedia article, converted to uppercase.

## charmix

Simple demonstration of lowercase and uppercase letters, which depending on
the mode are uppercase letters or the PETSCII graphics characters. It also
mentions the key combination (Shift + Alt) to toggle this.

## keypoll

Simply shows the code of the pressed key - in HEX, if any. Using <ESC> ends
the polling loop. If <ENTER> is pressed, a new line is used. If the screen
does not fit, simply delete line 0 which sets a `SCREEN 1`.

## veratext

Simple example using VERA to output text and text color, might not work under
all circumstances as the base address might have been set differently.

## cselect

Simple raw basic (no VERA) example of COLOR and key input.
