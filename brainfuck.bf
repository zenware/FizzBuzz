Code from https://github.com/Zomis/Brainduck/blob/master/src/main/resources/fizzbuzz.bf

TAPE MEANINGS
255 Start
254 A Fizz or Buzz text to print
253 End of Fizzes and Buzzes
252 Currently processed FizzBuzz calculation

TAPE OVERVIEW
Remaining Iterations
10 for Line Break
255 Start Marker
Counter
Boolean 1 or 0 for whether or not a fizzbuzz matches current counter
Some empty space for converting counter to string
  Any Number of Sequences of the following
    254 Indicator for FizzBuzz sequence
    Counter
    Countdown until next text output
    Text any number of characters
    Zero
    Zero
254 and 253 marker to indicate the end of sequences

++++++++++[>++++++++++<-]> Initialize 100 (number of times to perform FizzBuzz)
$ lastLoop 'initialize100'
$ assert value == 100

>++++++++++                   Line break
>-                            Start marker
>>>>> >>>>> >                 Empty space for counter to string conversion


SETUP Create the Fizz and Buzz sequences on the tape
  without having to write plus more than 65 times for every character

Fizz
-->                               Create indicator
>+++++ +++++ [-
$ loop 'setupFizz'
>+++++ ++
>+++++ +++++
>+++++ +++++ ++
>+++++ +++++ ++
<<<<]
+++                                Set modulo value to 3
>
>+++++
>++
>++
>>


Buzz = 66 117 122 122
-->>                               Create indicator
+++++ +++++ [-
$ loop 'setupBuzz'
> +++++ ++                         10 * 7 = 70
> +++++ +++++ ++                   10 * 12 = 120
> +++++ +++++ ++
> +++++ +++++ ++
<<<<]
+++++                              Set modulo value to 5
>----                              70 minus 4 = 66
>---                               120 minus 3 = 117
>++                                120 plus 2 = 122
>++
>>

-->---          Mark the ending with 254 and 253

END OF SETUP

ALGORITHM START

$ nextLoop 'gotoStart'
+[-<+]-         Go backwards to the 255 mark
<<              Go to the countdown

[
$ loop 'main'
 ->>            Decrease countdown
 >+>	        Increase counter

 $ nextLoop 'find254'
 ++[-->++]-->   Find next 254 and go one step beyond it
 
                Loop through all 254s
    +++[---         Make sure that we are not at 253 (end)
     $ loop 'notEnd'
	 <--        	Go to 254 marker and change to 252 to indicate that we are processing it
	 >+			    Increase fizzbuzz counter
	 >-             Decrease fizzbuzz countdown

	 If current marker is NOT zero
         $ nextLoop 'notZero'
	 	 [
		     <<++                Go left to value 252 and change to 254
             $ nextLoop 'skipText'
             [>]                 Go to a zero to avoid repeat in case there is a 254 value in the string
             $ nextLoop 'next254'
             ++[-->++]-- <       Find NEXT 254 marker and stop right before it
     	 ]
	 
	 >++
	     Check if we are positioned on a 254 already then if skip this
         $ nextLoop 'matchFound'
	 	 [--
 
 		 	 We have a match so find start position and mark match
			 
             $ nextLoop 'find255'
			 +[-<+]-  >>         Find 255 marker and go to the boolean
             $ nextLoop 'setBoolean'
			 [-]+                Set boolean to 1 whatever the previous value is
             $ nextLoop 'find252'
			 ++++[---->++++]--   Find value 252 and change to 254
             $ nextLoop 'resetCountdown'
			 >[->+<]             Reset the current FizzBuzz countdown
             $ nextLoop 'printText'
			 >>[.>]			     Print the text
             $ nextLoop 'next254'
			 ++[-->++]           Go to next 254 change to 256 to break loop
		 ]
	 -->
	 
	 +++ Detect if we are at the 253 end
	 ]
  ---

ALL FIZZBUZZES PROCESSED
Use the boolean to check whether or not to print the number

  
  $ nextLoop 'search255_afterFizzBuzzes'
  +[-<+]-     Go back to the 255 marker
  >>          Go to boolean
  -[+         If boolean is zero then print the number

         $ nextLoops 'printNumber'
         Code taken from StackOverflow below for printing a number
>++++++++++<<[->+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]>>[-]>>>++++++++++<[->-[>+>>]>[+[-
<+>]>+>>]<<<<<]>[-]>>[>++++++[-<++++++++>]<.<<+>+>[-]]<[<[->-<]++++++[->++++++++
<]>.[-]]<<++++++[-<++++++++>]<.[-]<<[-<+>]
         End of StackOverflow code
         
         cursor is now located on the boolean
  ]
  
  Boolean is now zero so just print the new line
  <<<.      Print new line
  <         Go to the countdown to find out if we should go another round
]
