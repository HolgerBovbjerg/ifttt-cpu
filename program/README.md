# Assembler for ifttt-cpu 
This assembler is made for use with the iftt-cpu

## Code guideline
The assembler needs an input file with assembly code. One line can only contain one instruction to be performed. Possible register names are r1, r2, r3, ... , r32. Memory addresses are given in hex values equivalent to up to 16 bit (0000..ffff). Program memory addresses are given in hex values representable by 10 bit (0000..03ff). Immediate data is given in integer values between 0 and 255. 

OBS: The current assembler does not support signed number operation. Neither does it support comments (although it will only read until it has found the data fields that it needs in each line which means that single line comments can be issued after each assembly line without interfering with the assembly).

The available instructions are as following:
1. NOP 
The NOP instruction does not need operands as nothing is done. \
Example: 
    * NOP 
2. ADDR
The ADDR instruction adds two registers and stores the result in a third register. It needs three register names.\ 
Example: Storing the result of r1 + r2 in r3
    * ADDR r3, r1, r2 
3. ADDI
The ADDI instruction adds an immediate two a register and stores the result in a third register. Two register names and an integer up to 255 is needed.\
Example: Storing the result of r1 + 5 in r2
    * ADDR r2, r1, 5
4. ADDC
The ADDC instruction Adds The ADDR instruction adds two registers including carry from previous operation and stores the result in a third register. It needs three register names.\
Example: Storing the result of r1 + r2 + carry in r3
    * ADDR r3, r1, r2 
5. SUBR
The SUBR instruction subracts two registers from eachother and stores the result in a third register. Three register names are needed. It needs three register names.\
Example: Storing the result of r1 - r2 in r3
    * SUBR r3, r1, r2
6. SUBI
The SUBI instruction subtracts an immediate value from a register and stores the result in a third register. It needs three register names.\
Example: Storing the result of r1 - 4 in r3
    * SUBR r3, r1, 4
7. BSL
The BSL instruction leftshifts a register by the value of another register and stores the result in a third register. It needs three register names.\
Example: Storing r1 << r2 in r3
    * BSL r3, r1, r2
8. BSR
The BSR instruction rightshifts a register by the value of another register and stores the result in a third register. It needs three register names.\
Example: Storing r1 >> r2 in r3
    * BSR r3, r1, r2 
9. OR
The OR instruction ORs two registers and stores the result in a third. It needs three register names.\
Example: Storing r1 OR r2 in r3
    * OR r3, r1, r2
10. XOR
The XOR instruction XORs two registers and stores the result in a third. It needs three register names.\
Example: Storing r1 XOR r2 in r3
    * XOR r3, r1, r2
11. AND
The AND instruction ANDs two registers and stores the result in a third. It needs three register names.\
Example: Storing r1 AND r2 in r3
    * AND r3, r1, r2
12. NOT 
The or instruction NOTs a register and stores the result in another. It needs two register names.\
Example: Storing NOT r1 in r2
    * NOT r2, r1
13. CMP
The CMP instruction compares two regsiters and stores the result in a third. It needs three register names.\
Example: Comparison of r1 compared with r2 stored in r3
    * CMP r3, r1, r2
14. LOAD
The LOAD instruction loads an 8 bit value into a GP register.\
Example: 100 loaded into r1
    * LOAD r1, 100
15. WRITE
The WRITE instruction writes a register to a memory location indicated as a hex number. It needs a register name and a memory address in hex.\
Example:  Write r1 to memory address 0001
    * WRITE r1, 0001
16. READ 
The read instruction reads a value from a memory location and stores it in a register. It needs a register name and a memory address in hex. \
Example: Read memory address 0f0f and store it in r1
    * WRITE r1, 0f0f
17. BRANCH
The BRANCH instruction has five subinstructions to specify a condition for branching. A hex address and a subinstruction is needed. Possible subinstructions are: JMP - unconditional jump, CAR - jump if carry flag is set, OVR - jump if overflow flag is set, NEG - jump if negative flag is set, ZER - Jump if zero flag is set.\
Example: Jump to address 00ff if overflow flag is set
    * BRANCH 00ff, OVR
18. JUMPEQ
The JUMPEQ instruction is used to compare two registers and jump if they are equal. Two register names and a hex address are needed.\
Example:  Jump to address 000f if r1 and r2 are equal
    * JUMPEQ r1, r2, 000f
19. RETURN 
The RETURN instruction is used to return to the last saved program address. No operands are needed.\
Example: Return to last saved program address
    * RETURN
20. PUSH
The PUSH instruction is used to push data from a register to a memory stack. A register name is needed.\
Example: Push r1 to stack in memory
    * PUSH r1
21. POP
The POP instruction is used to pop data from memory stack to a register. A register name is needed. \
Example: POP data from stack memory to r1
    * PUSH r1
    
    
## Memory addresses
### Data memory
Every hex address with 00 as the first bits are data memory. Data memory has 1024 adresses each storing 8 bit.\ 
Decimal address         Hex address\
[0..1024]        =>    [0000..03FF]\

### Display driver
Every hex address with 01 as the first bits are display driver.
[4000..3FFF]\

ASCII input supported. Buffers up to 34 bytes. Text is written to display when end of text character is written to display driver.

### I^2C
Every hex address with 10 as the first bits are I^2C.\
I2C address register          = C000 (write only)\
I2C data tx register          = C001 (write only)\
I2C data rx register          = C002 (read ony)\
I2C setup register            = C003 (write only)\
I2C slave register register   = C003 (write only)\

### GPIO addresses
Every hex address with 11 as the first bits are GPIO.\
PIN0     = 8000 \
PIN1     = 8001 \
PIN2     = 8002 \
PIN3     = 8003 \
PIN4     = 8004 \
PIN5     = 8005 \
PIN6     = 8006 \
PIN7     = 8007 \
CONFIG   = 8008 - [PIN7, PIN6, PIN5, PIN4, PIN3, PIN2, PI1, PIN0] (1 for output, 0 for input)\
All GPIO pins are inputs initially. If a pin is configured as output it cannot be read and if it is configured as input it cannot be written to.

## Running the assembler
When the assembler code has been written assembler.exe is run in the same folder as the assembly program file. The next steps are then as follows:
1. Assembler asks for the name of inputfile 
2. Assembler asks for the name of outputfile (If the file does already exist it will be overwritten).
3. Assembler asks for the depth of program memory - here 1024 is input
4. Assembler asks for the width of program memory - here 32 is input
5. The assembler will then generate a .mif file which will contain the machine code to load into the program memory. This will be placed in the same folder as the assembler is run in. 
