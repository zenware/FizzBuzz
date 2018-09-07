/*
 * To use, you need TempleOS
 * In TempleOS, include the file
 * -> #include "holyc.HC"
 * and from the shell, call it
 * -> Fizzbuzz(1, 100);
 */

U0 Fizzbuzz(I64 Start, I64 End) {
  I64 i = Start;
  while (i <= End) {
    if (i % 3 && i % 5) {
      "%d", i;
    }
    
    if (!(i % 3)) {
      "Fizz";
    }
    
    if (!(i % 5)) {
      "Buzz";
    }
    '\n';
    i++;
  }
}
