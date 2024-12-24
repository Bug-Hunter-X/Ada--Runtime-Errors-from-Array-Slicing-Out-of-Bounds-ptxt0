```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Sub_Array is My_Array(1..5);
   Sub : Sub_Array;
begin
   Sub := Arr(1..5); -- Correct slicing
   Arr(1..5) := Sub; --Also correct, it copies sub back to arr
   Sub := Arr(6..10); --Another correct slicing, it takes elements 6 to 10 from array Arr
   Arr(6..10) := Sub; --Also correct, it copies the sub back to array Arr
   --Example of potential error
   Sub := Arr(1..11); -- This will raise Constraint_Error at runtime
   -- Another example of error
   Arr(1..11) := Sub; -- This will also raise Constraint_Error at runtime
   -- The following is correct
   Sub := Arr(1..5);
   Arr(1..5) := Sub; 
   -- The error occurs if you try to access or assign a value outside of the declared index range of the array.
   -- The compiler does not detect it in most cases.  
end Example;
```