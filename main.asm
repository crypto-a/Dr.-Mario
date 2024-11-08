# ===========================================================
# Program: Dr. Mario
# Author: Ali Rahbar
# Date: November 8, 2024
# Description:
# This is teh main entery point fo the code. Will be used to
# run program.
# ===========================================================


.data
    ##############################################################################
    # Immutable Data
    ##############################################################################
    # The address of the bitmap display.
    ADDR_DSPL:
        .word 0x10008000
    
    # The address of the keyboard. Don't forget to connect it!
    ADDR_KBRD:
        .word 0xffff0000
        
    
    
    
    
    ##############################################################################
    # Mutable Data
    ##############################################################################
    # Define a null-terminated string
    hello: .asciiz "Hello world\n"  
    





##############################################################################
# Code
##############################################################################
.text
.globl main

# Declare hello as an external symbol

# ===========================================================
# Function: main
# Description: 
# This is the main entry point of the game
# ===========================================================
main:
    # Print using syscall
    li $v0, 4
    la $a0, hello
    syscall
    
    b quit # Quit Program
    
    
    
# ===========================================================
# Function: quit
# Description: 
# Used to Gracfully Quit Progrm
# ===========================================================
quit:
    # Exit the program
    li $v0, 10
    syscall

