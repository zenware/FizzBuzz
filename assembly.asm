  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                         Runs with nasm-2.11.05                          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;              Courtesy - google and my engineering lab work              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; https://github.com/sunnypatel165/BELabCodes/tree/master/Microprocessors ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                 Thanks!                                 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;DATA;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
section .data
	fizz dw "Fizz", 0Ah, 0Dh          ;Define Fizz
	buzz dw "Buzz", 0Ah, 0Dh          ;Define Buzz
	fizzbuzz dw "FizzBuzz", 0Ah, 0Dh  ;Define FizzBuzz
	newLine dw 0Ah, 0Dh               ;Define \n

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;TEXT;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
section	.text
    global  _start

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;INIT;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
_start:
	  mov ecx, 1                      ;counter=1

	  loop_main:
	  push ecx                        ;counter


	  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LOGIC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	  xor dx, dx                      ;reset
	  mov ax, cx
	  mov bx, 15
	  div bx
	  cmp dx, 0
	  jz divisible_by_both            ;if divisible by both 3 and 5

	  xor dx, dx                      ;reset
	  mov ax, cx
	  mov bx, 3
	  div bx
	  cmp dx, 0
	  jz divisible_by_three           ;if divisible by 3

	  xor dx, dx                      ;reset
	  mov ax, cx
	  mov bx, 5
	  div bx
	  cmp dx, 0
	  jz divisible_by_five            ;if divisible by 5

	  mov eax, ecx                    ;eax = number to be printed
	  call print_num
	  jmp resume


	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;FIZZBUZZ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	divisible_by_both:
	  mov eax, 4                      ;System Call
	  mov ebx, 1
	  mov ecx, fizzbuzz
	  mov edx, 10
	  int 0x80
	jmp resume

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;FIZZ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	divisible_by_three:
	  mov eax, 4                  	  ;System Call
	  mov ebx, 1
	  mov ecx, fizz
	  mov edx, 6
	  int 0x80
	jmp resume


	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;BUZZ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	divisible_by_five:
	  mov eax, 4                      ;System Call
	  mov ebx, 1
	  mov ecx, buzz
	  mov edx, 6
	  int 0x80
	jmp resume

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;UTILS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	resume:
	  pop ecx                         ;Counter
	  cmp ecx, 100
	  jz exit                         ;loop end
	  inc ecx                         ;counter++
	jmp loop_main

	exit:
	  mov eax, 1
	  mov ebx, 0                      ;exit(0)
	  int 0x80

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; PRINT ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	print_num:
	  push esi                        ;save counter
	  mov esi, 0                      ;counter = 0

	  loop_div:                       ;loop
	    mov edx, 0
	    mov ebx, 10                   ;edx = mod 10
	    div ebx                       ;eax = dividide by 10
	    add edx, 48
	    push edx
	    inc esi                       ;counter++
	    cmp eax, 0
	 je print_chars                   ;done loop
	jmp loop_div

	print_chars:
	  cmp esi, 0
	  je done
	  dec esi                         ;counter--
	  mov eax, 4                      ;System Call
	  mov ebx, 1
	  mov edx, 1
	  mov ecx, esp
	  int 0x80
	  add esp, 4
	jmp print_chars

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;PRINT\n;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	done:
	  mov eax, 4                      ;System Call
	  mov ebx, 1
	  mov ecx, newLine
	  mov edx, 1
	  int 0x80
	  pop esi                         ;Counter
	ret
