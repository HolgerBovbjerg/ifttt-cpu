#ifndef ASSEMBLY_TO_MIF
#define ASSEMBLY_TO_MIF

FILE *assembly_to_mif(FILE *input, FILE *output);
int readASM(FILE *input);
int findOpcode();
void assembleFromOpcode(FILE *outputFile, int j);
void printToOutput(FILE *output);
int getLineCounter();
void findRegister(char *charPointer);
int decToBinary(int decimalNumber);
int hexToBinary(char hexdec[]);
int initConstants();

#endif // ASSEMBLY_TO_MIF
