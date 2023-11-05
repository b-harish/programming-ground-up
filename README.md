# Programming from the Ground Up

This repo contains all the codes written while studying the **Programming from the Ground Up** book  by Jonathan Bartlett.

## Tools Required
Below are the tools I used while studying this book.
* 32-bit Machine with Linux Distro (Debian 12).
	* I used virtual box and debian 32-bit iso to simulate this specification mentioned in book.
* Assembler (`sudo apt-get install binutils`)
	* verify by executing `as --version` in the shell.

## Chapter 1 - Introduction
## Chapter 2 - Computer Architecture
## Chapter 3 - Your First Programs

**Programs**
1. Assembly program to call exit() system call in Linux (`exit.s`).
2. Find maximum number out of a list of numbers (`maximum.s`).

Below is an example on how to run an assembly file.
1. `as exit.s -o exit.o`
  	* assembler to transform source code (human readable) to object code (machine readable but not completely put together)
2. `ld exit.o -o exit`
  	* linker adds additional info to the object code (if multiple object code files, then links as well) and converts to complete machine code
3. `./exit`
  	* executes the program
  
For the programs mentioned above, the results are stored in the *exit status code* register (`%ebx`) which can be viewed by executing `echo $?`.
