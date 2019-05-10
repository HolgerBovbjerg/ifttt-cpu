# Assembler for ifttt-cpu 
This assembler is made for use with the iftt-cpu

## Guideline
The assembler needs an input file with assembly code. One line can only contain one instruction to be performed. Possible register names are r1, r2, r3, ... , r32. Memory addresses are given in hex values equivalent to up to 16 bit (0000..ffff). Program memory addresses are given in hex values representable by 10 bit (0000..03ff). Immediate data is given in integer values between 0 and 255.\ 
OBS: The current assembler does not support signed number operation.\ 
The available instructions are currently as following:\ 
1. NOP 
The NOP instruction does not need operands as nothing is done\
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
14. WRITE
The WRITE instruction writes a register to a memory location indicated as a hex number. It needs a register name and a memory address in hex.\
Example:  Write r1 to memory address 1
    * WRITE r1, 1
15. READ 
The read instruction reads a value from a memory location and stores it in a register. It needs a register name and a memory address in hex. \
Example: Read memory address f and store it in r1
    * WRITE r1, f
16. BRANCH
The BRANCH instruction has five subinstructions to specify a condition for branching. A hex address and a subinstruction is needed. Possible subinstructions are: JMP - unconditional jump, CAR - jump if carry flag is set, OVR - jump if overflow flag is set, NEG - jump if negative flag is set, EQ - Jump if equal flag is set.\
Example: Jump to address f if overflow flag is set
    * BRANCH f, OVR
17. JUMPEQ
The JUMPEQ instruction is used to compare two registers and jump if they are equal. Two register names and a hex address are needed.\
Example:  Jump to address f if r1 and r2 are equal
    * JUMPEQ r1, r2, f
18. RETURN 
The RETURN instruction is used to return to the last saved program address. No operands are needed.\
Example: Return to last saved program address
    * RETURN
19. PUSH
The PUSH instruction is used to push data from a register to a memory stack. A register name is needed.\
Example: Push r1 to stack in memory
    * PUSH r1
20. POP
The POP instruction is used to pop data from memory stack to a register. A register name is needed. \
Example: POP data from stack memory to r1
    * PUSH r1
    
    
## Memory addresses
### I^2C
I2C address register = C00 (write only)
I2C data tx register = C01 (write only)
I2C data rx register = C02 (read ony)
I2C setup register = C02 (write ony)


