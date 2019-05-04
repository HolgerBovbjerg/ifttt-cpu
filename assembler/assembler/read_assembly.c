#include <stdio.h>
#include <stdbool.h>
#include "read_assembly.h"

#define buffersize 100

#define register_OP 1
#define memory_OP 2
#define program_flow_OP 3
#define special_OP 4

FILE *read_assembly(FILE *input) {
    printf("Reading .asm file...\n");
    input = fopen("prog.asm", "r");
    if (!input)
    {
        printf("File cannot be read\n");
        return input;
    }
    return input;
}
