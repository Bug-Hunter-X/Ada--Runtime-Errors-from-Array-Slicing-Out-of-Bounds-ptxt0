```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Sub_Array is My_Array(1..5);
   Sub : Sub_Array;
begin
   Sub := Arr(1..5); 
   Arr(1..5) := Sub; 
   Sub := Arr(6..10); 
   Arr(6..10) := Sub; 
   -- Safe slicing and assignment within bounds
   if Arr'Range'Length >= 5 then
      Sub := Arr(1..5);
      Arr(1..5) := Sub; 
   else
     Put_Line("Array too short for this slice operation");
   end if;
   -- Check bounds before slicing or assigning outside the array range 
   if Arr'Range'Last >= 10 then
      Sub := Arr(6..10); 
      Arr(6..10) := Sub; 
   else
      Put_Line("Array too short for this slice operation");
   end if;
end Example_Solution;
```