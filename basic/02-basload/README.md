# BASLOAD - Welcome to ASCII BASIC listings... without line-numbers

Note: You cannot load a BASLOAD file with the `x16emu -bas <file>` statement.

Instead, you need to start the emulator and use the command `BASLOAD <file>` inside of it.
The file is being loaded and automatically receives line numbers.
You can check this by using **LIST** after the file has been loaded.

Furthermore - if the input file contains variables - they will be completely
renamed. Example: In the file you are using "structured" variable names with more
than one character and upon loading, BASLOAD will create a new BASIC variable
for it, beginning with A, A0 etc.

## hibasload.bas

Simple example ASCII file without line numbers.

## shbit.txt

A bit more stuff in a simple text file created on the Host computer. Simply
start the x16emu and then enter the command `BASLOAD "SHBIT.TXT"`. It should
reply with some **LOADING...**. Afterwards, you should be able to use the
standard commands to `LIST` and `RUN` it.
