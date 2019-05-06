#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "read_assembly.h"
#include "write_mif.h"


/*
Program works in the following way:
1. Assembly file is read
2. Output file is initiated from template
3. One line of assembly code is translated to equivalent binary code
4. Binary code is stored in output buffer
5. Output buffer written to output file
6. If end of file stop translate and go to 8
7. Continue with next line
8. Output file is ended
*/

int main() {
    FILE *inputFile;
    inputFile=NULL;
    inputFile = read_assembly(inputFile);
    write_mif(inputFile);
    return 0;
}





