# Ada Runtime Errors from Array Slicing

This repository demonstrates a common yet subtle error in Ada programming: runtime errors resulting from array slicing that goes beyond the defined bounds of the array.  Ada's strong typing helps prevent many errors at compile time but does not always catch out-of-bounds array access when slicing is involved.

The `bug.ada` file contains code that exhibits this issue. The `bugSolution.ada` file provides a corrected version with robust checks to prevent the runtime error.  The solution involves explicit range checks and more careful slice handling.

## How to Reproduce

1.  Compile and run `bug.ada` using an Ada compiler (e.g., GNAT). 
2.  Observe the `Constraint_Error` exception raised at runtime.
3. Compile and run `bugSolution.ada` to see the corrected behavior.

## Lesson Learned

Always carefully check the validity of array slice operations, especially those involving dynamic or potentially changing bounds, to avoid runtime errors.  Consider adding explicit range checks or using containers with built-in bounds checking if the potential for out of bounds access exists.