# PURPOSE:	This program finds the maximum number of a
#		set of data items.
#
# VARIABLES:
#	The registers have following uses:
#
#	%edi - Holds the index of the data item being examined
#	%ebx - Largest data item found
#	%eax - Current data item
#
#	The following memory locations are used:
#
#	data_items - contains the item data. 0 is used to terminate the data
#

.section .data

data_items:	#  These are data items
	.long 3,67,34,222,45,75,54,34,44,33,22,11,66,0

.section .text
.globl _start
_start:
	movl $0, %edi			# move 0 to index register. represents index position
	movl data_items(,%edi,4), %eax	# load first byte of data  to %eax
	movl %eax, %ebx			# so far, first item is the biggest

	start_loop:
		cmpl $0, %eax			# check current element is 0
		je loop_exit			# jump to loop_exit if previous comparision is equal (e in je)
		incl %edi			# increment index position to point next value in the list
		movl data_items(,%edi,4), %eax	# load value pointed by current index to %eax
		cmpl %ebx, %eax			# compare highest value so far with current element
		jle start_loop			# repeat if current element is less than or equal to highest element (le in le)
		movl %eax, %ebx			# found larger element. load to %ebx
		jmp start_loop			# jump to loop beginning

	loop_exit:
		# %ebx is the status code for exit system call
		# it already has maximum number
		movl $1, %eax	# exit() system call
		int $0x80
