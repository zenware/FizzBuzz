-- Note: GNAT complains if the unit is simply named "Ada" since that is a system
--  unit. gnatmake silently refuses to do anything.

with Ada.Text_IO;

procedure Ada_FizzBuzz is
   package IO renames Ada.Text_IO;

   function FizzBuzz(N : Integer) return String is
   begin
      if N mod 3 = 0 and N mod 5 = 0 then
         return "FizzBuzz";
      elsif N mod 3 = 0 then
         return "Fizz";
      elsif N mod 5 = 0 then
         return "Buzz";
      else
         return Integer'Image(N)(2 .. Integer'Image(N)'Last);
      end if;
   end FizzBuzz;
begin
   for I in Integer range 1 .. 100 loop
      IO.Put_Line(FizzBuzz(I));
   end loop;
end Ada_FizzBuzz;
