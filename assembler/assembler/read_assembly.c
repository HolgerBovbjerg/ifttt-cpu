#include <stdio.h>
#include "read_assembly.h"

FILE *read_assembly(FILE *input)
{
    // Request filename
    printf("Write name of file containing assembly code:\n");
    char str[100];
    input = fopen(gets(str), "r");
    printf("Reading %s...\n", str);
    // Check for file
    if (!input)
    {
        printf("File cannot be read\n");
        return input;
    }
    // Return file pointer
    return input;
}
