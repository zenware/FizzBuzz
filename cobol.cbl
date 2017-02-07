       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIZZ-BUZZ.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CT PIC 999 VALUE 1.
       01 FZ PIC 999 VALUE 1.
       01 BZ PIC 999 VALUE 1.
       01 RESULT-STRING PIC x(3).
       01 SPACE-COUNT PIC 99 VALUE ZERO.
       PROCEDURE DIVISION.
       FIZZ-BUZZ-MAIN SECTION.
           PERFORM 100 TIMES
                   IF FZ = 3
                        THEN IF BZ = 5
                           THEN DISPLAY "FizzBuzz"
                           COMPUTE BZ = 0
                           ELSE DISPLAY "Fizz"
                           END-IF
                           COMPUTE FZ = 0
                        ELSE IF BZ = 5
                        THEN DISPLAY "Buzz"
                           COMPUTE BZ = 0
                        ELSE
                            MOVE 0 TO SPACE-COUNT
                            INSPECT CT TALLYING SPACE-COUNT
                                FOR LEADING ZEROES
                            MOVE CT
                                (SPACE-COUNT + 1 :
                                    LENGTH OF CT - SPACE-COUNT)
                                        TO RESULT-STRING
                            DISPLAY RESULT-STRING
                        END-IF
                END-IF
                ADD 1 TO CT
                ADD 1 TO FZ
                ADD 1 TO BZ
           END-PERFORM
        STOP RUN.
