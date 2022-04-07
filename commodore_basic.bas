10 for x = 1 to 100
20 if (x-int(x/15)*15)=0 then 110
30 if (x-int(x/3)*3)=0 then 70
40 if (x-int(x/5)*5)=0 then 90
50 print x
60 goto 130
70 print "fizz"
80 goto 130
90 print "buzz"
100 goto 130
110 print "fizzbuzz"
120 goto 130
130 next x
140 end
run
