#!/bin/bash
#
# Convert BASIC ASCII listing to PRG with the help of the X16Emu
#

X16EMULATOR="$(which x16emu)"

function mkbas2prg {
    cat $1.bas > $1.tmp
    echo "SAVE \"${1^^}.PRG\"" >> $1.tmp
    echo "POWEROFF" >> $1.tmp
    $X16EMULATOR -bas $1.tmp -run
    rm $1.tmp
}

if [ -f $X16EMULATOR ]; then
    mkbas2prg "hello"
    mkbas2prg "filerdwr"
    mkbas2prg "charmix"
    mkbas2prg "cselect"
    mkbas2prg "time"
    mkbas2prg "wikipedia"
    mkbas2prg "keypoll"
    mkbas2prg "veratext"
else
    echo "$X16EMULATOR does not exist, please set correct name/path in script."
fi
