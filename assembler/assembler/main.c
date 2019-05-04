#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>

#include "read_assembly.h"
#include "write_mif.h"

#define buffersize 100

#define register_OP 1
#define memory_OP 2
#define program_flow_OP 3
#define special_OP 4

/*
Program works in the following way:
1. Assembly file is read
3. Translate one line of assembly code to binary code
4. Binary code is stored in output buffer
5. Output buffer written to output file
6. If end of file stop translate and go to 8
7. Continue with next line
8. Write binary code to output file
*/


int main() {
    FILE *inputFile;
    inputFile=NULL;
    inputFile = read_assembly(inputFile);
    write_mif(inputFile);
    return 0;
}





