#include <stdio.h>
#include "write_mif.h"
#include "assembly_to_mif.h"

#define buffersize 100
char temp[buffersize];

int write_mif(FILE *input)
{
    printf("Writing .mif file...\n");
    FILE *mif;
    // Open mif file
    mif = fopen("prog.mif", "w");
    if (!mif)
    {
        printf("File cannot be written to \n");
        return 0;
    }
    // Write config data
    printf("Writing memory config...\n");
    fprintf(mif, "DEPTH = %d;\n", 1024);
    fprintf(mif, "WIDTH = %d;\n", 32);
    fprintf(mif, "ADDRESS_RADIX = UNS;\n");
    fprintf(mif, "DATA_RADIX = BIN;\n");
    fprintf(mif, "CONTENT\n");
    fprintf(mif, "BEGIN\n\n");
    // close mif file
    fclose(mif);
    // Append mif with binary code generated from assembly code
    mif = assembly_to_mif(input, mif);
    // Open mif for appending
    fopen("prog.mif", "a");

    // Set remaining program memory to all zeroes
    printf("Loading unused memory with zeroes...\n");
    fprintf(mif, "[%d..%d] : 00000000000000000000000000000000;\n", getLineCounter() + 1, 1023);
    // End mif file
    printf("Writing .mif end statement...\n");
    fprintf(mif, "END;");
    // Close mif
    fclose(mif);
    printf(".mif file ready!\n");
    return 0;
}
