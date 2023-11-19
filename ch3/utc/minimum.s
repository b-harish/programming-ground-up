# PURPOSE: Find and return the minimum of list of numbers
#

# VARIABLES:
#	The registers used are as follows:
#		%edi - to store the index which points which element we are examining
#		%eax - to store the current element pointed by index
#		%ebx - to store the minimum element seen so far
#
#	The following memory locations are used:
#		data_items - contains the item data. 0 is used to terminate the data
#

.section .data
data_items:
	.long 3,67,34,222,45,75,54,1,34,44,33,22,11,66,0

.section .text
.globl _start
_start:
	movl $0, %edi
	movl data_items(,%edi,4), %eax
        cmpl $0, %eax
	je loop_exit

	movl %eax, %ebx
	start_loop:
		incl %edi
		movl data_items(,%edi,4), %eax
                cmpl $0, %eax
		je loop_exit
		cmpl %ebx, %eax
		jge start_loop
		movl %eax, %ebx
		jmp start_loop

	loop_exit:
		movl $1, %eax
		int $0x80
