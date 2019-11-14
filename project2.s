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

        #li $t0, 4

#exits the program
    printOutput:
        li $v0, 4
        la $a0, outputMessage
        syscall
        li $v0, 10
        syscall

