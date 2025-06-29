/*
** cc65 version of "shbit.txt" (BASLOAD example)
*/
#include <stdio.h>

void showbits(unsigned char v)
{
    // note:
    // the decimal values have been retained from the original file, even though
    // it is no big deal to use the corresponding hex values - which are present
    // in the comments.
    int i=0;

    // BOX - TOP PART
    putc(0xb0, stdout);
    for (i=0;i<7;i++)
    {
        putc(0x63, stdout);
        putc(0xb2, stdout);
    }
    putc(0x63, stdout);
    putc(0xae, stdout);
    putc(0x0d, stdout); // CR

    // BOX - LEGEND
    for (i=0;i<=7;i++)
    {
        printf("%c%d", 0x62, 7-i);
    }
    putc(0x62, stdout);
    putc(0x0d, stdout); // CR

    // BOX - MIDDLE PART
    putc(0xab, stdout);
    for (i=0;i<7;i++)
    {
        putc(0x63, stdout);
        putc(0x7b, stdout);
    }
    putc(0x63, stdout);
    putc(179, stdout); // 0xb3
    putc(13, stdout); // CR

    // BOX - VARIABLE PART
    for(i=7;i!=-1;i--)
    {
        putc(0x62, stdout);
        if ( v & (1<<i) )
        {
            putc('1', stdout);
        }
        else
        {
            putc('0', stdout);
        }
    }
    putc(0x62, stdout);
    putc(0x0d, stdout); // CR

    // BOX - LOWER PART
    putc(173, stdout); // 0xad
    for (i=0;i<7;i++)
    {
        putc(0x63, stdout);
        putc(177, stdout);
    }
    putc(0x63, stdout);
    putc(189, stdout); // 0xbd
    putc(0x0d, stdout); // CR
}
void main(void) 
{
    unsigned char v;

    // this is required so we can see our PETSCII stuff
    // cc65 default is lowercase which allows lowercase/uppercase letters
    putc(142, stdout); // UPPERCASE

    // just a simple test
    // since this is not BASIC, it is not possible to easily use another
    // number due it has first to be compiled and linked for the target.
    v=42;
    showbits(v);

    return;
}
