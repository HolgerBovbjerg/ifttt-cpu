#include <stdio.h>
#include "write_mif.h"
#include "assembly_to_mif.h"

#define buffersize 100
char temp[buffersize];

int write_mif(FILE *input)
{
    // Create FILE pointer for output
    FILE *mif;
    // Request name of outputfile
    printf("Write name of outputfile:\n");
    char str[100];
    mif = fopen(gets(str), "w");
    // Check for file
    if (!mif)
    {
        printf("File cannot be written to \n");
        return 0;
    }
    printf("Writing to %s...\n", str);
    // Write config data to outputfile
    printf("Writing memory config...\n");
    // Request config data to outputfile
    printf("Write memory depth:\n");
    char depth[100];
    gets(depth);
    fprintf(mif, "DEPTH = %s;\n", depth);
    printf("Write memory width:\n");
    char width[100];
    gets(width);
    fprintf(mif, "WIDTH = %s;\n", width);
    fprintf(mif, "ADDRESS_RADIX = UNS;\n");
    fprintf(mif, "DATA_RADIX = BIN;\n\n");
    fprintf(mif, "CONTENT\n");
    fprintf(mif, "BEGIN\n");
    // Append mif with binary code generated from assembly code input
    mif = assembly_to_mif(input, mif);
    // Set remaining program memory to all zeroes
    printf("Loading unused memory with zeroes...\n");
    if (getLineCounter() < 1023)
    {
        fprintf(mif, "[%d..%d] : 00000000000000000000000000000000;\n", getLineCounter(), 1023);
    }
    else if (getLineCounter() == 1023)
    {
        fprintf(mif, "[%d] : 00000000000000000000000000000000;\n", getLineCounter());
    }
    // End mif file
    printf("Writing .mif end statement...\n");
    fprintf(mif, "END;");
    // Close mif
    fclose(mif);
    printf(".mif file ready!\n");
    return 0;
}
