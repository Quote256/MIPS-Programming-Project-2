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

