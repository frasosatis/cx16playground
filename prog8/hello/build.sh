#!/bin/bash
SRCFILE=hello
prog8c -target cx16 $SRCFILE.p8
if [[ $? -eq 0 ]];
then
    x16emu -run -prg $SRCFILE.prg
fi
