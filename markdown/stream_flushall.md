
# Stream.FlushAll

## Syntax
**Stream.FlushAll**

## Description
The **Stream.FlushAll** procedure is used to flush any buffered output in any open file. 


## Details
Turing automatically flushes any buffered output when a stream is closed. Turing also automatically closes any open files when execution is terminated.


## Status
Exported qualified.

This means that you can only call the function by calling **Stream.FlushAll**, not by calling **FlushAll**.

