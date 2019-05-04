#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "assembly_to_mif.h"

#define buffersize 100

#define register_OP 1
#define memory_OP 2
#define program_flow_OP 3
#define special_OP 4

char temp[buffersize];
// Array for opcodes
char opcodeArray[21][10];
char opcodeArrayBinary[21][10];
// Array for special opcode commands
char specialOpcodeArray[3][15];
char specialOpcodeArrayBinary[3][15];
// Array for registers
char registerArray[32][15];
char registerArrayBinary[32][15];

int operandCount;
int opcodeType;
int opcodesTotal = 21;
int lineCounter = 0;
int lineIterator = 0;

int outputIndex = 0;
int outputType = 0;
char inputArray[1024][100];
char outputArray[1024][100];

char writeReg;


FILE *assembly_to_mif(FILE *input, FILE *output) {
    // Open mif for appending
    output = fopen("prog.mif", "a");
    // Initiate constants
    initConstants();
    // Read assembly code into buffer
    readASM(input);
    printf("Starting assembly...\n");
    // Find opcode in buffer
    for (int i = 0; i < lineCounter; i++)
    {
        findOpcode(output);
    }

    // Close outputfile
    fclose(output);
    // Return outputfile
    printf("Assembly finished!\n");
    return output;
}

void readASM(FILE *input) {
    // For every line in inputfile
    printf("Buffering assembly code...\n");
    for (int i = 0; i < 23; i++)
    {
        printf("Reading line of assembly code...\n");
        // Copy line to inputArray buffer
        strcpy(inputArray[i], fgets(temp, buffersize, input));
        // Add one to linecounter
        lineCounter++;
        printf("Assembly code read is: \n");
        // Print assembly code
        printf(inputArray[i]);
        printf("\n");
    }
    printf("\n");
    printf("Buffering finished.\n");
    printf("\n");
}

void findOpcode(FILE *outputFile) {
    printf("Finding opcode...\n");
    for (int j = 0; j <= opcodesTotal-1; j++)
    {
        if (strstr(inputArray[lineIterator], opcodeArray[j]))
        {
            outputIndex = 0;
            printf("Opcode found!\n");
            strcpy(outputArray[outputIndex], opcodeArrayBinary[j]);
            printf("Opcode is: ");
            printf(opcodeArray[j]);
            printf("\n");
            outputIndex++;
            if (j == 0) // no operation
            {
                printf("Opcode type is: No Operation\n");
                strcpy(outputArray[outputIndex], "0000000000000000000000000000");
            }
            else if (1 <= j && j <= 9) // register register instruction
            {
                printf("Opcode type is: Register register operation\n");
                char * pch;
                pch = strtok(inputArray[lineIterator], " ,");
                while (pch != NULL)
                {
                    printf ("%s\n", pch);
                    pch = strtok(NULL, " ,.-");
                }
                strcpy(outputArray[outputIndex], "0000000000000000000000000001");
            }
            else if (j == 10) // register load instruction
            {
                printf("Opcode type is: Register register operation\n");
                char * pch;
                pch = strtok(inputArray[lineIterator], " ,");
                while (pch != NULL)
                {
                    printf ("%s\n", pch);
                    pch = strtok(NULL, " ,.-");
                }
                strcpy(outputArray[outputIndex], "0000000000000000000000000001");
            }
            else if (15 <= j && j <= 17) // register immediate instruction
            {
                printf("Opcode type is: Register immediate operation\n");
                char * pch;
                pch = strtok(inputArray[lineIterator], " ,");
                while (pch != NULL)
                {
                    printf ("%s\n", pch);
                    pch = strtok(NULL, " ,.-");
                }
                strcpy(outputArray[outputIndex], "0000000000000000000000000001");
            }
            else if (11 <= j && j <= 12 ) // memory write/read
            {
                printf("Opcode type is: Memory operation\n");
                strcpy(outputArray[outputIndex], "0000000000000000000000000010");
            }
            else if (13 <= j && j <= 14) // Program flow instruction
            {
                printf("Opcode type is: Program flow operation\n");
                strcpy(outputArray[outputIndex], "0000000000000000000000000011");
            }
            else if (j == 18) // Return instruction
            {
                printf("Opcode type is: Special opcode\n");
                strcpy(outputArray[outputIndex], "0000000000");
                outputIndex++;
                strcpy(outputArray[outputIndex], specialOpcodeArrayBinary[0]);
                outputIndex++;
                strcpy(outputArray[outputIndex], "000000000000000");
            }
            else if (j == 19) // Push instruction
            {
                printf("Opcode type is: Special opcode\n");
                strcpy(outputArray[outputIndex], "0000000000");
                outputIndex++;
                strcpy(outputArray[outputIndex], specialOpcodeArrayBinary[1]);
                outputIndex++;
                strcpy(outputArray[outputIndex], "000000000000000");
            }

            else if (j == 20) // Pop instruction
            {
                printf("Opcode type is: Special opcode\n");
                strcpy(outputArray[outputIndex], "0000000000");
                outputIndex++;
                strcpy(outputArray[outputIndex], specialOpcodeArrayBinary[2]);
                outputIndex++;
                strcpy(outputArray[outputIndex], "000000000000000");
            }

            else
            {
               printf("No opcode found.");
            }


            printf("%d \n", outputIndex);
            fprintf(outputFile , "%d : ", lineIterator);
            for (int i = 0; i <= outputIndex; i++)
            {
                    fprintf(outputFile, outputArray[i]);
                }
                    fprintf(outputFile, ";\n");
            }
        }
        lineIterator++;
}

int getLineCounter() {
    return lineCounter;
}

int initConstants()
{
    printf("Initialising assembly constants...\n");
    strcpy(opcodeArray[0], "NOP"); // NOP opcode
    strcpy(opcodeArray[1], "ADDR"); // Add opcode
    strcpy(opcodeArray[2], "SUBR"); // Subtraction opcode
    strcpy(opcodeArray[3], "BSL"); // Bit shift left opcode
    strcpy(opcodeArray[4], "BSR"); // Bit shift right opcode
    strcpy(opcodeArray[5], "OR"); // Or opcode
    strcpy(opcodeArray[6], "XOR"); // Xor opcode
    strcpy(opcodeArray[7], "AND"); // And opcode
    strcpy(opcodeArray[8], "NOT"); // Not opcode
    strcpy(opcodeArray[9], "CMPR"); // Compare opcode
    strcpy(opcodeArray[10], "LOAD"); // Load opcode
    strcpy(opcodeArray[11], "READ"); // Read opcode
    strcpy(opcodeArray[12], "WRITE"); // Write opcode
    strcpy(opcodeArray[13], "BRANCH"); // Branch opcode
    strcpy(opcodeArray[14], "JUMPEQ"); // Jump equal opcode
    strcpy(opcodeArray[15], "ADDI"); // Add immediate opcode
    strcpy(opcodeArray[16], "ADDC"); // Add carry opcode
    strcpy(opcodeArray[17], "SUBI"); // Subtract immediate opcode
    strcpy(opcodeArray[18], "RETURN"); // Return opcode
    strcpy(opcodeArray[19], "PUSH"); // Push opcode
    strcpy(opcodeArray[20], "POP"); // Pop opcode
    strcpy(opcodeArrayBinary[0], "0000");
    strcpy(opcodeArrayBinary[1], "0001");
    strcpy(opcodeArrayBinary[2], "0010");
    strcpy(opcodeArrayBinary[3], "0011");
    strcpy(opcodeArrayBinary[4], "0100");
    strcpy(opcodeArrayBinary[5], "0101");
    strcpy(opcodeArrayBinary[6], "0110");
    strcpy(opcodeArrayBinary[7], "0111");
    strcpy(opcodeArrayBinary[8], "1000");
    strcpy(opcodeArrayBinary[9], "1001");
    strcpy(opcodeArrayBinary[10], "1010");
    strcpy(opcodeArrayBinary[11], "1011");
    strcpy(opcodeArrayBinary[12], "1100");
    strcpy(opcodeArrayBinary[13], "1101");
    strcpy(opcodeArrayBinary[14], "1110");
    strcpy(opcodeArrayBinary[15], "0001");
    strcpy(opcodeArrayBinary[16], "0001");
    strcpy(opcodeArrayBinary[17], "0010");
    strcpy(opcodeArrayBinary[18], "1111");
    strcpy(opcodeArrayBinary[19], "1111");
    strcpy(opcodeArrayBinary[20], "1111");
    strcpy(specialOpcodeArrayBinary[0], "001");
    strcpy(specialOpcodeArrayBinary[1], "010");
    strcpy(specialOpcodeArrayBinary[2], "011");
    strcpy(registerArray[0], "r1");
    strcpy(registerArray[1], "r2");
    strcpy(registerArray[2], "r3");
    strcpy(registerArray[3], "r4");
    strcpy(registerArray[4], "r5");
    strcpy(registerArray[5], "r6");
    strcpy(registerArray[6], "r7");
    strcpy(registerArray[7], "r8");
    strcpy(registerArray[8], "r9");
    strcpy(registerArray[9], "r10");
    strcpy(registerArray[10], "r11");
    strcpy(registerArray[11], "r12");
    strcpy(registerArray[12], "r13");
    strcpy(registerArray[13], "r14");
    strcpy(registerArray[14], "r15");
    strcpy(registerArray[15], "r16");
    strcpy(registerArray[16], "r17");
    strcpy(registerArray[17], "r18");
    strcpy(registerArray[18], "r19");
    strcpy(registerArray[19], "r20");
    strcpy(registerArray[20], "r21");
    strcpy(registerArray[21], "r22");
    strcpy(registerArray[22], "r23");
    strcpy(registerArray[23], "r24");
    strcpy(registerArray[24], "r25");
    strcpy(registerArray[25], "r26");
    strcpy(registerArray[26], "r27");
    strcpy(registerArray[27], "r28");
    strcpy(registerArray[28], "r29");
    strcpy(registerArray[29], "r30");
    strcpy(registerArray[30], "r31");
    strcpy(registerArray[31], "r32");
    strcpy(registerArrayBinary[0], "00000");
    strcpy(registerArrayBinary[1], "00001");
    strcpy(registerArrayBinary[2], "00010");
    strcpy(registerArrayBinary[3], "00011");
    strcpy(registerArrayBinary[4], "00100");
    strcpy(registerArrayBinary[5], "00101");
    strcpy(registerArrayBinary[6], "00110");
    strcpy(registerArrayBinary[7], "00111");
    strcpy(registerArrayBinary[8], "01000");
    strcpy(registerArrayBinary[9], "01001");
    strcpy(registerArrayBinary[10], "01010");
    strcpy(registerArrayBinary[11], "01011");
    strcpy(registerArrayBinary[12], "01100");
    strcpy(registerArrayBinary[13], "01101");
    strcpy(registerArrayBinary[14], "01110");
    strcpy(registerArrayBinary[15], "01111");
    strcpy(registerArrayBinary[16], "10000");
    strcpy(registerArrayBinary[17], "10001");
    strcpy(registerArrayBinary[18], "10010");
    strcpy(registerArrayBinary[19], "10011");
    strcpy(registerArrayBinary[20], "10100");
    strcpy(registerArrayBinary[21], "10101");
    strcpy(registerArrayBinary[22], "10110");
    strcpy(registerArrayBinary[23], "10111");
    strcpy(registerArrayBinary[24], "11000");
    strcpy(registerArrayBinary[25], "11001");
    strcpy(registerArrayBinary[26], "11010");
    strcpy(registerArrayBinary[27], "11011");
    strcpy(registerArrayBinary[28], "11100");
    strcpy(registerArrayBinary[29], "11101");
    strcpy(registerArrayBinary[30], "11110");
    strcpy(registerArrayBinary[31], "11111");
    printf("Constants initialised.\n");
    return 0;
}
