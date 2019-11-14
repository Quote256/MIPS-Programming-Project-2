#Input string of up to 1000 characters
#Return unsigned integer corresponding with the base-N number represented by a string


.data
inputMessage: .asciiz "Input a string: "
#Initialize an array
myArray: .space 11
outputMessage: .asciiz "\nThe output is: "

.text
    main:
#Input Message
        li $v0, 4
        la $a0, inputMessage
        syscall

        #Initialize array
        li $v0, 8 #opcode for  reading in a string
        la $a0, myArray
        li $a1, 11
        syscall

        li $v0, 10 #exits the program
        syscall

