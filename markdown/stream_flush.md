
#Stream.Flush

##Syntax
**Stream.Flush** ( _streamNumber_ **: int** )


##Description
The **Stream.Flush** procedure is used to flush any buffered output associated with the _streamNumber_ parameter. 


##Details
Turing automatically flushes any buffered output when a stream is closed. Turing also automatically closes any open files when execution is terminated.


##Status
Exported qualified.

This means that you can only call the function by calling **Stream.Flush**, not by calling **Flush**.

