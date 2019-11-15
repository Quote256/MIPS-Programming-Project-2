#Howard ID = 02878554
#N = 34, M = 24 (Range of 'A' to 'X' and 'a' to 'x')
#Input string of up to 1000 characters
#Return unsigned integer corresponding with the base-N number represented by a string


.data
inputMessage: .asciiz "Input a string: " #Prompt to input a string
#Initialize an array
StringInput: .space 1001                 #Allocated space for up to 1000 characters
#Initializing the numbers that I multiply the input with
baseN: .word 34 
baseN2: .word 1156
baseN3: .word 39304
iterator: .word 0 #Added iterator
size: .word 4 #Added size
tab: .word 9 #For tabs
space: .word 32 #For spaces
NumberLowest: .word 48 #Lowest number (0)
NumberHighest: .word 57 #Highest number (9)
LowLowest: .word 97 #Lowest lowercase letter (a)
LowHighest: .word 120 #Highest lowercase letter that I can go to (x)
UpLowest: .word 65 #Lowest uppercase letter (A)
UpHighest: .word 88 #Highest uppercase letter that I can go to (X)

outputMessage: .asciiz "\nThe output is: " #Output message
Invalid: .asciiz "\nInvalid Input"         #Text displayed when the user input is invalid

.text
    main:
#Input Message
        li $v0, 4
        la $a0, inputMessage
        syscall

#Initialize array
        li $v0, 8 #opcode for  reading in a string
        la $a0, StringInput
        li $a1, 1001
        syscall

#Storing variables
        la $t0, StringInput
        lw $t1, iterator
        lw $t2, size
#Loop
     loop:
        bgt $t1, $t2, InvalidStatement #If iterator > size = Invalid Statement
        lb $t3, $t1, 0($t0)
        
        
#Prints invalid input
InvalidStatement:
        li $v0, 4
        la $a0, Invalid
        syscall
        li $v0, 10
        syscall

#Exits the program
    printOutput:
        li $v0, 4
        la $a0, outputMessage
        syscall
        li $v0, 10
        syscall