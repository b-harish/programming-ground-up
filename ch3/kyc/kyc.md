# Know Your Concepts

1. What does it mean if a line in the program starts with the '#' character?
	* A line that starts with '#' character means a comment. A comment is meant for other programers and future self to explain about what the program does. It's ignored by the assembler while assembling.

2. What is the difference between an assembly language file and an object code file?
	* An assembly language file is a source code (a text file) which contains assembly instructions. It's human readable program.
	* An object code file is a file created by assembler by translating the source code to instructions for the machine.

3. What does the linker do?
	* The object file created by assembler for the machine is not complete.
	* Linker adds few info on top of the object file to let the Kernel know how to load and run the program.
	* Also if multiple object files are related and to be merged (linked) to get a single program, it is also done by the linker.

4. How do you check the result status code of the last program you run?
	* `echo $?`

5. What is the difference between `movl $1, %eax` and `movl 1, %eax`?
	* `movl $1, %eax` uses immediate addressing mode that says take the number `1` (literally!) and put in the `%eax` register.
	* `movl 1, %eax` uses direct addressing mode that says take the value available at memory location 1 and put that in `%eax` register.

6. Which register holds the system call number?
	* `%eax`

7. What are indexes used for?
	* Indexes are used to refer which item we are pointing to in a collection of items.
	* Eg: Index can point to 0 (1st element), 1 (2nd element) and so on.

8. Why do indexes usually start at 0?
	* Usually labels/variables contains the address of the first value.
	* To find the address of an arbitrary element in a collection, the general format is as follows `ADDRESS_OF_FIRST_VALUE + INDEX*NUM_BYTES_PER_ITEM`
	* If index is started from one, then above format says that to access first element, use `ADDRESS_OF_FIRST_VALUE + 1*4` (4 refers 4B per item).
	* Assume that first value starts at 0th memory address. Now the above computation takes us to 2nd element rather than first element.
	* Long story short, I think since the memory addresses are designed in a such a way that it already points to the first element, indexes start at 0.

9. If I issued the command `movl data_items(,%edi,4), %eax` and `data_items` was address `3634` and `%edi` held the value 13, what address would you be using to move into `%eax`?
	* **3686** = 3634 + (13*4)

10. List the general purpose registers.
	* `%eax`, `%ebx`, `%ecx`, `%edx`, `%edi`, `%esi`

11. What is the difference between `movl` and `movb`?
	* `movl` is used to move a word (4B = long) at a time.
	* `movb` is used to move a byte at a time.
		- In 32 bit processors, the registers are of 32 bits. So to move a byte, we need to refer to `%al` (LSB(yte) of `%ax`) or `%ah` (MSB(yte) of `%ax`).
		- Here %ax is half of %eax. It points the least significant portion of `%eax`

12. What is flow control?
	* Flow control is a mechanism used to control the flow of the program.
	* Eg: jumping from one instruction to another. 

13. What does a conditional jump do?
	* Conditional jump refers to jumping from one instruction to another instruction when a condition is met.
	* Eg: `jle LABEL` jumps to the instruction at address pointed by LABEL if in the previous comparison result, the second value is less than or equal to the first value.

14. What things do you have to plan for when writing a program?
	* Logic
	* Registers I need
	* *TBD*
	
15. Go through every instruction and list what addressing mode is being used for each operand.
	* *TBD*


