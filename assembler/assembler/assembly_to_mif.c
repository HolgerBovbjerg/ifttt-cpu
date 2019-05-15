#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "assembly_to_mif.h"

#define buffersize 100

// Buffer for storing input string temporarily
char temp[buffersize];
// Buffer to store binary number
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
// Number of opcodes
int opcodesTotal = 21;

// variables for keeping track of total amount of lines and current line
int lineCounter = 0;
int lineIterator = 0;

// Variable for keeping track of opcode
int opcode = 0;

// Variable for keeping track of index in outputArray
int outputIndex = 0;

// Arrays for storing input and output
char inputArray[2048][100];
char outputArray[1024][100];

FILE *assembly_to_mif(FILE *input, FILE *output)
{
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
        lineIterator++; // Line iterator is increased twice as a fix for
        lineIterator++; // blank lines appearing after every line read into inputArray
    }
    printf("Assembly finished!\n");
    // Return outputfile
    return output;
}

int readASM(FILE *input)
{
    // For every line in inputfile
    printf("Buffering assembly code...\n\n");
    for (int i = 0; i < 1024*2; i++)
    {
        int ch;
        char firstLetter;
        if ((ch = getc(input)) != EOF) // if next character is not End Of File
        {
            printf("Reading line %d of assembly code...\n", lineCounter + 1);
            // Copy line to inputArray buffer
            firstLetter = ch; // Save first character as char (needed because of getc(input) in EOF check)
            sprintf(inputArray[i], "%c", firstLetter); // Add first letter to inputArray at place i
            strcat(inputArray[i], fgets(temp, buffersize, input)); // append inputArray with reamaining contents of line
            printf("Assembly code read is: \n");
            printf(inputArray[i]);// Print assembly code stored in inputArray
            printf("\n");
            lineCounter++; // Add one to linecounter
            i++;
        }
        else // if next character is EOF
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
    int opcodeNo = 0; // Reset opcodeNumber
    outputIndex = 0; // Reset outputIndex
    int j = 0; // Iteration integer
    while(j < opcodesTotal) // loop through opcodes
    {
            if (strstr(inputArray[lineIterator], opcodeArray[j])) // A match is found
            {
                opcodeNo = j; // Save opcode number
                printf("Opcode found!\n");
                strcpy(outputArray[outputIndex], opcodeArrayBinary[opcodeNo]); // Copy opcode binary value to outputarray
                printf("Opcode is: ");
                printf(opcodeArray[opcodeNo]); // Print name of opcode found
                printf("\n");
                outputIndex++; // Go to next index in outputArray
                break;
            }
            j++;

    }
    return opcodeNo; // Return opcode number for use in assembly
}

void assembleFromOpcode(FILE *outputFile, int number)
{
    char *pch; // Create char pointer for reading string tokens
    pch = strtok(inputArray[lineIterator], " ,"); // Read first string token in inputArray (Opcode)
    printf("Generating binary machine code...\n");
    if (number == 0) // no operation
    {
        printf("Opcode type is: No Operation\n");
        strcpy(outputArray[outputIndex], "0000000000000000000000000000"); // Add zeroes to output for NOP
    }
    else if (1 <= number && number <= 9) // register register instruction
    {
        printf("Opcode type is: Register register operation\n");
        pch = strtok(NULL, " ,"); // Get first register name (Register C)
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++) // Loop through register names
        {
            if (strstr(pch,registerArray[i])) // If a match is found
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]); // Copy binary value of register to outputArray
            }
        }
        outputIndex++; // When all registers have been looked through go to next index in output array
        pch = strtok(NULL, " ,"); // Get next register name (Register A)
        printf("%s\n", pch);
        for (int i =0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++; // When all registers have been looked through go to next index in output array
        if (number != 8) // If opcode number is not a "NOT" operation look for third register
        {
        pch = strtok(NULL, " ,"); // Get next register name (Register A)
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex], registerArrayBinary[i]);
            }
        }
        }
        else // If "NOT" operation append output with five zeroes
        {
            strcpy(outputArray[outputIndex], "00000");
        }
        outputIndex++;
        strcpy(outputArray[outputIndex], "0000000000000");
    }
    else if (number == 10) // register load instruction
    {
        printf("Opcode type is: Register load operation\n");
        pch = strtok(NULL, " ,"); // Get register address
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++) // Loop through register names
        {
            if (strstr(pch,registerArray[i])) // If a match is found
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]); // Copy binary equivalent to output array
            }
        }
        outputIndex++;
        strcpy(outputArray[outputIndex], "0000000000"); // Append output with zeroes
        outputIndex++;
        pch = strtok(NULL, " ,"); // Get immidiate value as a string
        printf("%s\n", pch);
        int imm = atoi(pch); // Cast string to integer
        printf("%d\n", imm);
        decToBinary(imm); // Convert decimal number to binary string (stored in binaryNum)
        strcpy(outputArray[outputIndex], binaryNum); //Copy binary number to output array
        outputIndex++;
        strcpy(outputArray[outputIndex], "0000"); // Append output with zeroes
        outputIndex++;
        strcpy(outputArray[outputIndex], "1"); // Append output with one for IMM enable
    }
    else if (15 == number || number == 17) // register immediate instruction
    {
        printf("Opcode type is: Register immediate operation\n");
        pch = strtok(NULL, " ,"); // Get first register name
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++) // Loop through register names
        {
            if (strstr(pch,registerArray[i])) // If match
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]); // Copy binary equivalent to output array
            }
        }
        outputIndex++;
        pch = strtok(NULL, " ,"); // Get register name
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++) // Loop through register names
        {
            if (strstr(pch,registerArray[i])) // If match
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]); // Copy binary equivalent to output array
            }
        }
        outputIndex++;
        pch = strtok(NULL, " ,"); // Get immediate value as a string
        printf("%s\n", pch);
        int imm = atoi(pch); // Cast string to integer
        printf("%d\n", imm);
        decToBinary(imm); // Convert decimal number to binary string (stored in binaryNum)
        printf("%s", binaryNum);
        strcpy(outputArray[outputIndex], binaryNum); //Copy binary number to output array
        outputIndex++;
        strcpy(outputArray[outputIndex], "000000000"); // append output with zeroes
        outputIndex++;
        strcpy(outputArray[outputIndex], "1"); // Append output with one for IMM enable
    }
    else if (number == 16) // register carry instruction
    {
        printf("Opcode type is: Register carry operation\n");
        pch = strtok(NULL, " ,"); // Get first register
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++;
        pch = strtok(NULL, " ,"); // Get next register
        printf("%s\n", pch);
        for (int i =0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++;
        pch = strtok(NULL, " ,"); // Get third register
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex], registerArrayBinary[i]);
            }
        }
        outputIndex++;
        strcpy(outputArray[outputIndex], "0000000000100");  // Append with zeroes (The '1' is for CARRY enable)
    }
    else if (11 <= number && number <= 12) // memory write/read
    {
        printf("Opcode type is: Memory operation\n");
        if(number == 11) // If memory write
        {
            pch = strtok(NULL, " ,"); // Get register name
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
        else // If memory read
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
        pch = strtok(NULL, " ,"); // Get hex address
        printf("%s\n", pch);
        hexToBinary(pch); //Convert hex string to binary string (stored in binaryNum)
        strcpy(outputArray[outputIndex], binaryNum); // store binaryNUm in outputArray
        outputIndex++;
        strcpy(outputArray[outputIndex], "00");
    }
    else if (13 == number) // Branch instruction
    {
        printf("Opcode type is: Branch operation\n");
        strcpy(outputArray[outputIndex], "000000000000000"); // Append output with 15 zeroes as no registers are used
        outputIndex++;
        pch = strtok(NULL, " ,"); // Get hex string
        printf("%s\n", pch);
        hexToBinary(pch); // Convert hex string to binary
        char tenBit[11];
        for (int i = 0; i < 10; i++)
        {
            tenBit[i] = binaryNum[6+i];
        }
        tenBit[10] = '\0'; // End string number to 10 bits
        strcpy(outputArray[outputIndex], tenBit);
        outputIndex++;
        pch = strtok(NULL, " ,"); // Get branch command
        printf("%s\n", pch);
        for (int i = 0; i < 5; i++) // Loop through branch control commands
        {
            if (strstr(pch, branchArray[i])) // If match
            {
                strcpy(outputArray[outputIndex], branchArrayBinary[i]); // Copy binary equivalent to output
            }
        }
    }
    else if (14 == number) // Jumpeq instruction
    {
        printf("Opcode type is: Jumpeq operation\n");
        strcpy(outputArray[outputIndex], "00000"); //Append with zeroes
        outputIndex++;
        pch = strtok(NULL, " ,"); // Get first register
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex], registerArrayBinary[i]);
            }
        }
        outputIndex++;
        pch = strtok(NULL, " ,"); // Get second register
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex], registerArrayBinary[i]);
            }
        }
        outputIndex++;
        pch = strtok(NULL, " ,"); // Get hex value string
        printf("%s\n", pch);
        hexToBinary(pch); // Convert hex string to binary
        char tenBit[11];
        for (int i = 0; i < 10; i++)
        {
            tenBit[i] = binaryNum[6+i];
        }
        tenBit[10] = '\0'; // End string number to 10 bits
        strcpy(outputArray[outputIndex], tenBit);
        outputIndex++;
        strcpy(outputArray[outputIndex], "000");
    }
    else if (number == 18) // Return instruction
    {
        printf("Opcode type is: Special opcode\n");
        strcpy(outputArray[outputIndex], "0000000000"); // Append output with zeroes
        outputIndex++;
        strcpy(outputArray[outputIndex], specialOpcodeArrayBinary[0]); // Write return special opcode to output
        outputIndex++;
        strcpy(outputArray[outputIndex], "000000000000000"); // Append output with zeroes
    }
    else if (number == 19) // Push instruction
    {
        printf("Opcode type is: Special opcode\n");
        pch = strtok(NULL, " ,"); // Get register
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
        strcpy(outputArray[outputIndex], specialOpcodeArrayBinary[1]); // write PUSH special opcode to output
        outputIndex++;
        strcpy(outputArray[outputIndex], "000000000000000");
    }
    else if (number == 20) // Pop instruction
    {
        printf("Opcode type is: Special opcode\n");
        strcpy(outputArray[outputIndex], "00000");
        outputIndex++;
        pch = strtok(NULL, " ,"); // Get register
        printf("%s\n", pch);
        for (int i = 0; i < 32 - 1; i++)
        {
            if (strstr(pch,registerArray[i]))
            {
                strcpy(outputArray[outputIndex],registerArrayBinary[i]);
            }
        }
        outputIndex++;
        strcpy(outputArray[outputIndex], specialOpcodeArrayBinary[2]); // write PUSH special opcode to output
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
    // Write line number
    if (((lineIterator / 2)) < 10) // Check for formatting
    {
        fprintf(outputFile, "%d    : ", (lineIterator / 2));
    }
    else if (((lineIterator / 2)) < 100) // Check for formatting
    {
        fprintf(outputFile, "%d   : ", (lineIterator / 2));
    }
    else if (((lineIterator / 2)) < 1000) // Check for formatting
    {
        fprintf(outputFile, "%d  : ", (lineIterator / 2));
    }
    else
    {
        fprintf(outputFile, "%d : ", (lineIterator / 2));
    }
    // Write line of machine code
    for (int i = 0; i <= outputIndex; i++) // Loop through output array
    {
        fprintf(outputFile, outputArray[i]); // For every element print value to outputfile
    }
    // New line
    fprintf(outputFile, ";\n"); // Print nextline to outputfile
    printf("Outputfile updated.\n");
}

int getLineCounter()
{
    return lineCounter;
}


int decToBinary(int decimalNumber)
{
    binaryNum[8] = '\0'; // Set 8 character in binaryNum to string termination as data is only 8 bits
    int  c, k; // Iteration variables
    printf("Translating %d from decimal to binary...\n", decimalNumber);

    for (c = 7; c >= 0; c--) // Loop eight times one for every bit in number
    {
        k = decimalNumber >> c; // k = decimal number rightshifted c times

        if (k & 1) // if k is '1'
        {
            printf("1");
            binaryNum[7-c] = '1'; // Bit at place 7-c is 1
        }
        else // k is '0'
        {
            printf("0");
            binaryNum[7-c] = '0'; // Bit at place 7-c is 0
        }
    }
    printf("\n");
    return 0;
}

int hexToBinary(char hexdec[])
{
    printf("Translating %s from hex to binary...\n", hexdec);
    long int i = 0; // Iteration variable
    char binaryNumBuff[16]; // Buffer array
    binaryNumBuff[0] = '\0'; // Reset buffer
    binaryNum[0] = '\0'; // Reset binary number variable
    while (hexdec[i]) { // Loop through hex number
        switch (hexdec[i]) { // Translating to binary
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
            strcat(binaryNumBuff, "0110");
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
        }
        if (i == 3) break;
        i++;
    }
    printf("\n");
    for(int j = 0; j < 16; j++)
    {
        binaryNum[j] = binaryNumBuff[j];// append binary number with buffer
    }
    return 0;
}

int initConstants()
{
    printf("Initialising assembly constants...\n");
    //Copy constants to arrays
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
    strcpy(branchArray[4], "ZER");
    strcpy(branchArray[5], "TEST");
    strcpy(branchArrayBinary[0], "001");
    strcpy(branchArrayBinary[1], "010");
    strcpy(branchArrayBinary[2], "011");
    strcpy(branchArrayBinary[3], "100");
    strcpy(branchArrayBinary[4], "101");
    printf("Constants initialised.\n");
    return 0;
}
