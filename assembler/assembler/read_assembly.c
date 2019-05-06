#include <stdio.h>
#include "read_assembly.h"

FILE *read_assembly(FILE *input)
{
    printf("Reading .asm file...\n");
    input = fopen("prog.asm", "r");
    if (!input)
    {
        printf("File cannot be read\n");
        return input;
    }
    return input;
}
