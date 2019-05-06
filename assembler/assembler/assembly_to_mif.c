#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "assembly_to_mif.h"

#define buffersize 100

char temp[buffersize];
// Array to store binary number
char binaryNum[16];
// Array for opcodes
char opcodeArray[21][10];
char opcodeArrayBinary[21][10];
// Array for special opcode commands
char specialOpcodeArray[3][15];
char specialOpcodeArrayBinary[3][15];
// Array for registers
char registerArray[32][15];
char registerArrayBinary[32][15];

//Array for branch control codes
char branchArray[8][15];
char branchArrayBinary[8][15];

int operandCount;
int opcodesTotal = 21;
int lineCounter = 0;
int lineIterator = 0;

int opcode = 0;
int outputIndex = 0;

char inputArray[1024][100];
char outputArray[1024][100];

char writeReg;

FILE *assembly_to_mif(FILE *input, FILE *output)
{
    // Open mif for appending
    output = fopen("prog.mif", "a");
    // Initiate constants
    initConstants();
    // Read assembly code into buffer
    readASM(input);
    printf("Initiating assembly...\n");
    // For every line in buffer
    for (int i = 0; i < lineCounter; i++)
    {
        // Find opcode
        opcode = findOpcode();
        // Assemble
        assembleFromOpcode(output, opcode);
        // Write machine code to outputfile
        printToOutput(output);
        lineIterator++;
        lineIterator++;
    }
    // Close outputfile
    fclose(output);
    printf("Assembly finished!\n");
    // Return outputfile
    return output;
}

int readASM(FILE *input)
{
    // For every line in inputfile
    printf("Buffering assembly code...\n\n");
    for (int i = 0; i < 1024; i++)
    {
        int ch;
        char firstLetter;
        if ((ch = getc(input)) != EOF)
        {
            printf("Reading line %d of assembly code...\n", lineCounter + 1);
            // Copy line to inputArray buffer
            firstLetter = ch;
            sprintf(inputArray[i], "%c", firstLetter);
            strcat(inputArray[i], fgets(temp, buffersize, input));
            // Add one to linecounter
            printf("Assembly code read is: \n");
            // Print assembly code
            printf(inputArray[i]);
            printf("\n");
            lineCounter++;
            i++;
        }
        else
        {
            printf("\nEnd of file reached.\n");
            printf("Buffering finished.\n\n");
            return 0;
        }
    }
    return 0;
}

int findOpcode()
{
    printf("Finding opcode...\n");
    int opcodeNo = 0;
    outputIndex = 0;
    int j = 0;
    while(j < opcodesTotal)
    {
            if (strstr(inputArray[lineIterator], opcodeArray[j]))
            {
                opcodeNo = j;
                printf("Opcode found!\n");
                strcpy(outputArray[outputIndex], opcodeArrayBinary[opcodeNo]);
                printf("Opcode is: ");
                printf(opcodeArray[opcodeNo]);
                printf("\n");
                outputIndex++;
                break;
            }
            j++;

    }
    return opcodeNo;
}

void assembleFromOpcode(FILE *outputFile, int number)
{
    char *pch;
    pch = strtok(inputArray[lineIterator], " ,");
    printf("%s\n", pch);
    printf("Generating binary machine code...\n");
    if (number == 0) // no operation
    {
        printf("Opcode type is: No Operation\n");
        strcpy(outputArray[outputIndex], "0000000000000000000000000000");
    }
    else if (1 <= number && number <= 9) // register register instruction
    {
        printf("Opcode type is: Register register operation\n");
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++;
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i =0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++;
        if (number != 8)
        {
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex], registerArrayBinary[i]);
            }
        }
        }
        else
        {
            strcpy(outputArray[outputIndex], "00000");
        }
        outputIndex++;
        strcpy(outputArray[outputIndex], "0000000000000");
    }
    else if (number == 10) // register load instruction
    {
        printf("Opcode type is: Register load operation\n");
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++;
        strcpy(outputArray[outputIndex], "0000000000");
        outputIndex++;
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        char ch = *pch;
        int imm = ch - '0';
        printf("%d\n", imm);
        decToBinary(imm);
        strcpy(outputArray[outputIndex], binaryNum);
        outputIndex++;
        strcpy(outputArray[outputIndex], "00000");
    }
    else if (15 == number || number == 17) // register immediate instruction
    {
        printf("Opcode type is: Register immediate operation\n");
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++;
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        char ch = *pch;
        int imm = ch - '0';
        printf("%d\n", imm);
        decToBinary(imm);
        strcpy(outputArray[outputIndex], binaryNum);
        outputIndex++;
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++;
        strcpy(outputArray[outputIndex], "00000");
        outputIndex++;
        strcpy(outputArray[outputIndex], "00001");
    }
    else if (number == 16) // register carry instruction
    {
        printf("Opcode type is: Register carry operation\n");
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++;
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i =0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++;
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex], registerArrayBinary[i]);
            }
        }
        outputIndex++;
        strcpy(outputArray[outputIndex], "0000000000100");
    }
    else if (11 <= number && number <= 12) // memory write/read
    {
        printf("Opcode type is: Memory operation\n");
        if(number == 11)
        {
            pch = strtok(NULL, " ,");
            printf("%s\n", pch);
            for (int i = 0; i < 32 - 1; i++)
            {
                if (strstr(pch, registerArray[i]))
                {
                    strcpy(outputArray[outputIndex], registerArrayBinary[i]);
                }
            }
            outputIndex++;
            strcpy(outputArray[outputIndex], "00000");
            outputIndex++;
        }
        else
        {
            strcpy(outputArray[outputIndex], "00000");
            outputIndex++;
            pch = strtok(NULL, " ,");
            printf("%s\n", pch);
            for (int i = 0; i < 32 - 1; i++)
            {
                if (strstr(pch,registerArray[i]))
                {
                    strcpy(outputArray[outputIndex], registerArrayBinary[i]);
                }
            }
            outputIndex++;
        }
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        hexToBinary(pch);
        strcpy(outputArray[outputIndex], binaryNum);
        outputIndex++;
        strcpy(outputArray[outputIndex], "00");
    }
    else if (13 == number) // Branch instruction
    {
        printf("Opcode type is: Branch operation\n");
        strcpy(outputArray[outputIndex], "000000000");
        outputIndex++;
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        hexToBinary(pch);
        strcpy(outputArray[outputIndex], binaryNum);
        outputIndex++;
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i = 0; i < 5 - 1; i++)
        {
            if (strstr(pch, branchArray[i]))
            {
                strcpy(outputArray[outputIndex], branchArrayBinary[i]);
            }
        }
    }
    else if (14 == number) // Jumpeq instruction
    {
        printf("Opcode type is: Jumpeq operation\n");
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex], registerArrayBinary[i]);
            }
        }
        outputIndex++;
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex], registerArrayBinary[i]);
            }
        }
        outputIndex++;
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        hexToBinary(pch);
        strcpy(outputArray[outputIndex], binaryNum);
        outputIndex++;
        strcpy(outputArray[outputIndex], "00");
    }
    else if (number == 18) // Return instruction
    {
        printf("Opcode type is: Special opcode\n");
        strcpy(outputArray[outputIndex], "0000000000");
        outputIndex++;
        strcpy(outputArray[outputIndex], specialOpcodeArrayBinary[0]);
        outputIndex++;
        strcpy(outputArray[outputIndex], "000000000000000");
    }
    else if (number == 19) // Push instruction
    {
        printf("Opcode type is: Special opcode\n");
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++;
        strcpy(outputArray[outputIndex], "00000");
        outputIndex++;
        strcpy(outputArray[outputIndex], specialOpcodeArrayBinary[1]);
        outputIndex++;
        strcpy(outputArray[outputIndex], "000000000000000");
    }
    else if (number == 20) // Pop instruction
    {
        printf("Opcode type is: Special opcode\n");
        strcpy(outputArray[outputIndex], "00000");
        outputIndex++;
        pch = strtok(NULL, " ,");
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++;
        strcpy(outputArray[outputIndex], specialOpcodeArrayBinary[2]);
        outputIndex++;
        strcpy(outputArray[outputIndex], "000000000000000");
    }
    else
    {
        printf("No opcode found.");
    }

    printf("Binary machine code generated.\n");
}

void printToOutput(FILE *outputFile)
{
    printf("Printing line of machine code to outputfile...\n");
    if (((lineIterator / 2) + 1) < 10)
    {
        fprintf(outputFile, "%d   : ", (lineIterator / 2) + 1);
    }
    else if (((lineIterator / 2) + 1) < 100)
    {
        fprintf(outputFile, "%d  : ", (lineIterator / 2) + 1);
    }
    else
    {
        fprintf(outputFile, "%d : ", (lineIterator / 2) + 1);
    }
    for (int i = 0; i <= outputIndex; i++)
    {
        fprintf(outputFile, outputArray[i]);
    }
    fprintf(outputFile, ";\n");
    printf("Outputfile updated.\n");
}

int getLineCounter()
{
    return lineCounter;
}


int decToBinary(int decimalNumber)
{
    binaryNum[8] = '\0';
    int  c, k;
    printf("%d in binary number system is:\n", decimalNumber);

    for (c = 7; c >= 0; c--)
    {
        k = decimalNumber >> c;

        if (k & 1)
        {
            printf("1");
            binaryNum[7-c] = '1';
        }
        else
        {
            printf("0");
            binaryNum[7-c] = '0';
        }
    }

    printf("\n");
    return 0;
}

int hexToBinary(char hexdec[])
{
    long int i = 0;
    char binaryNumBuff[16];
    binaryNumBuff[0] = '\0';
    binaryNum[0] = '\0';
    int notHex = 0;
    while (hexdec[i]) {
        switch (hexdec[i]) {
        case '0':
            strcat(binaryNumBuff, "0000");
            printf("0000");
            break;
        case '1':
            strcat(binaryNumBuff, "0001");
            printf("0001");
            break;
        case '2':
            strcat(binaryNumBuff, "0010");
            printf("0010");
            break;
        case '3':
            strcat(binaryNumBuff, "0011");
            printf("0011");
            break;
        case '4':
            strcat(binaryNumBuff, "0100");
            printf("0100");
            break;
        case '5':
            strcat(binaryNumBuff, "0101");
            printf("0101");
            break;
        case '6':
            strcpy(binaryNumBuff, "0110");
            printf("0110");
            break;
        case '7':
            strcat(binaryNumBuff, "0111");
            printf("0111");
            break;
        case '8':
            strcat(binaryNumBuff, "1000");
            printf("1000");
            break;
        case '9':
            strcat(binaryNumBuff, "1001");
            printf("1001");
            break;
        case 'A':
        case 'a':
            strcat(binaryNumBuff, "1010");
            printf("1010");
            break;
        case 'B':
        case 'b':
            strcat(binaryNumBuff, "1011");
            printf("1011");
            break;
        case 'C':
        case 'c':
            strcat(binaryNumBuff, "1100");
            printf("1100");
            break;
        case 'D':
        case 'd':
            strcat(binaryNumBuff, "1101");
            printf("1101");
            break;
        case 'E':
        case 'e':
            strcat(binaryNumBuff, "1110");
            printf("1110");
            break;
        case 'F':
        case 'f':
            strcat(binaryNumBuff, "1111");
            printf("1111");
            break;
        default:
            printf("\nInvalid hexadecimal digit %c", hexdec[i]);
            notHex = 1;
        }
        i++;
    }
    printf("\n");
    if (notHex)
    {
        i--;
    }
    for (int j = i; j < 4; j++)
    {
        strcat(binaryNum, "0000");
    }
    strcat(binaryNum, binaryNumBuff);
    return 0;
}

int initConstants()
{
    printf("Initialising assembly constants...\n");
    strcpy(opcodeArray[0], "NOP");     // NOP opcode
    strcpy(opcodeArray[1], "ADDR");    // Add opcode
    strcpy(opcodeArray[2], "SUBR");    // Subtraction opcode
    strcpy(opcodeArray[3], "BSL");     // Bit shift left opcode
    strcpy(opcodeArray[4], "BSR");     // Bit shift right opcode
    strcpy(opcodeArray[5], "OR");      // Or opcode
    strcpy(opcodeArray[6], "XOR");     // Xor opcode
    strcpy(opcodeArray[7], "AND");     // And opcode
    strcpy(opcodeArray[8], "NOT");     // Not opcode
    strcpy(opcodeArray[9], "CMP");    // Compare opcode
    strcpy(opcodeArray[10], "LOAD");   // Load opcode
    strcpy(opcodeArray[11], "READ");   // Read opcode
    strcpy(opcodeArray[12], "WRITE");  // Write opcode
    strcpy(opcodeArray[13], "BRANCH"); // Branch opcode
    strcpy(opcodeArray[14], "JUMPEQ"); // Jump equal opcode
    strcpy(opcodeArray[15], "ADDI");   // Add immediate opcode
    strcpy(opcodeArray[16], "ADDC");   // Add carry opcode
    strcpy(opcodeArray[17], "SUBI");   // Subtract immediate opcode
    strcpy(opcodeArray[18], "RETURN"); // Return opcode
    strcpy(opcodeArray[19], "PUSH");   // Push opcode
    strcpy(opcodeArray[20], "POP");    // Pop opcode
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
    strcpy(branchArray[0], "JMP");
    strcpy(branchArray[1], "CAR");
    strcpy(branchArray[2], "OVR");
    strcpy(branchArray[3], "NEG");
    strcpy(branchArray[4], "EQ");
    strcpy(branchArrayBinary[0], "001");
    strcpy(branchArrayBinary[1], "010");
    strcpy(branchArrayBinary[2], "011");
    strcpy(branchArrayBinary[3], "100");
    strcpy(branchArrayBinary[4], "101");
    printf("Constants initialised.\n");
    return 0;
}
