;
; Hello World in prog8 - more or less what is presented in the documentation
;
%import textio
%import cx16logo
%import emudbg
%import syslib
%zeropage basicsafe

main 
{
    sub start() 
    {
        txt.print("\n\n") ; make room for direct video stuff

        txt.print("this is the prog8 version of the famous hello world\n")
        txt.print("if you started this right after powering the cx16 on,\n")
        txt.print("you notice yellow ink on black background, while the\n")
        txt.print("power-on defaults might have been different.\n")

        cx16logo.logo_at(30,10)
        ;
        ; the cursor position now is at the top-right end of the logo,
        ; so it might be useful to change it a bit...
        ; also:
        ; showing the logo resets the writing color.
        ;
        txt.print("\n\n")

        if ( emudbg.is_emulator() )
        {
            txt.print("running under the x16emu.\n")
        }
        else
        {
            txt.print("running on a real commander x16?\n")
        }

        ;
        ; Just since we are here... some VERA direct access stuff...
        ;
        ubyte anim
        ubyte chr
        ubyte col

        for anim in 1 to 5
        {
            for col in 0 to 10
            {
                for chr in 1 to 26 
                {
                    cx16.vpoke(1,$b000 + (2*(chr-1)), chr)
                    cx16.vpoke(1,$b001 + (2*(chr-1)), col)
                }
                sys.wait(10)
            }
        }
    }
}
