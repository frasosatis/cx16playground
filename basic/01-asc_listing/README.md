# Ascii listing

## hello

This can easily be created on a host computer under Windows(tm), Linux or Mac. Since it contains mostly
ASCII characters, it can be freely edited with whatever editor is preferred.

Use `x16emu -bas hello.bas` to load into the X16(emu).
There, use `RUN` to run the program which does only output some stuff in 40-char mode.

Or, use `x16emu -bas hello.bas -run` to directly start it.

## time

If requiring a valid time on the X16 Emulator, you might need to start it with
setting the realtime clock to the host time, otherwise the time will be always
000000, which might be unexpected.

`x16emu -bas time.bas -run -rtc`
Should load the ASCII listing, run it and simply show the current time.
