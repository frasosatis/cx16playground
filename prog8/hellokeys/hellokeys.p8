/*
** Simple "Hello World" example using Text IO and keyboard input
** (just scanning cursor keys and escape, nothing too special)
*/
%import textio
%import syslib ; only for exit
%zeropage basicsafe

main 
{
    sub start() 
    {
        txt.print("hello world ... with cursor keys (row / col)")
        txt.nl()

        txt.print("press <esc> to return to basic.")
        txt.nl()

        kbdstuff()
    }

    sub kbdstuff()
    {
        ubyte posx = 0
        ubyte posy = 0

char_loop:
        ubyte char
        void, char = cbm.GETIN()
        if char==0
            goto char_loop

        when char 
        {
            $91 -> {
                txt.print("cursor up")
                if posy != 0 
                {
                    posy--
                }
                print_pos()
            }
            $11 -> {
                txt.print("cursor down")
                if posy<10 
                {
                    posy++
                }
                print_pos()
            }
            $9d -> {
                txt.print("cursor left")
                if posx != 0 
                {
                    posx--
                }
                print_pos()
            }
            $1d -> {
                txt.print("cursor right")
                if posx<79 
                {
                    posx++
                }
                print_pos()
            }

            $1b -> {
                txt.print("escape")
                sys.exit(0)
            }
        }
        goto char_loop

        sub print_pos()
        {
            txt.spc()
            txt.print_ub(char)
            txt.spc()
            txt.print_ubhex(char,true)
            txt.print(" => ")
            txt.print_ub(posy)
            txt.print("/")
            txt.print_ub(posx)
            txt.nl()
        }
    }
}
