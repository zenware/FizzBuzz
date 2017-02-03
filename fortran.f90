PROGRAM fizzbuzz
      IMPLICIT NONE
      INTEGER :: counter 
      
      DO counter=0,100
          IF (MOD(counter,15) == 0) THEN
              WRITE (*,'(A8)') "FizzBuzz"
          ELSE IF (MOD(counter,5) == 0) THEN
              WRITE (*,'(A4)') "Buzz"
          ELSE IF (MOD(counter,3) == 0) THEN
              WRITE (*,'(A4)') "Fizz"
          ELSE 
              WRITE (*,'(I2)') counter
          END IF
      END DO

END PROGRAM fizzbuzz
