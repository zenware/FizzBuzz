100 for x = 1 to 100
110 flag=1
120 if not (x-int(x/3)*3)=0 then 150
130 flag=0
140 print "fizz";
150 if not (x-int(x/5)*5)=0 then 180
160 flag=0
170 print "buzz";
180 if flag=1 then print x;
190 print
200 next x
run
