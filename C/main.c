#include <arch/zx/spectrum.h>
#include <conio.h>
#include <input.h>
#include <time.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>

#define sampleText "This is some text to output\0"

void my_open(void)
{
    printf("\nopen ..start..");
    // Try to interact with some BASIC Vars and GOTO some Line.

    //zx_getfloat("s"); // FLOAT

    //zx_getint('s'); // INT
    //zx_setint('f',(unsigned int) 256);
    
    //zx_setint('d', 0);
    //zx_setstr('n',"testfile");
    
    zx_goto(7500);
    
    printf("\nopen ..end..");
    return;
}

void my_close(void)
{
    printf("\nclose ..start..");
    zx_goto(7550);
    printf("\nclose ..end..");
    return;
}

void main(void)
{
    clrscr();
    printf("\n...C START...\n");
    printf("\nBasic length: %u\n", zx_basic_length());
    
   my_open();   // Method to dummy "open"
   // my_close();   // Method to dummy "close"

/*
    // For later testing with a real file system driver.

    FILE *fptr = NULL;
    fptr = fopen("testfile", "w+");

    //int fptr = NULL;
    //fptr = open("", 0, 0);

    if (fptr == NULL)
    {
        printf("\n ERROR");
    }
    else
    {
        // fputs(sampleText, fptr);
        // fclose(fptr);
        printf("\nfile open");
    }
*/

    printf("\n...C END...\n");
    in_Wait(5000);
}
