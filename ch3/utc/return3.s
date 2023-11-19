# PURPOSE: Program that just exits and returns 3 as a exit status code to Linux Kernel
#

# INPUT: none
#

# OUTPUT: returns 3 as a exit status code
#

.section .data

.section .text
.globl _start
_start:
	movl $1, %eax	# 1 is the exit system call number in Linux and system call numbers to be put in %eax
	movl $3, %ebx   # %ebx is the exit status code register. storing 3 in it
	int $0x80
