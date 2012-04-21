
#quit

##Syntax
A *quitStatement* is:
 **quit** [ *guiltyParty* ] [ : *quitReason* ]

##Description
The **quit** statement causes a program (or concurrent process) to fail. The failure (called an *exception*) either aborts the program (or process) or causes control to be passed to an exception handler.

##Example
In the *inputLines* procedure, halt the program if end of file is encountered before the string "stop" is read. Note that a **return** statement in the procedure would terminate the procedure but not the entire program.
        var line : array 1 .. 50 of string
        
        procedure inputLines
            var i : int := 0
            loop
                if eof then
                    put "Missing 'stop' in input"
                    quit        % Halt entire program
                end if
                i := i + 1
                get line ( i )
                exit when line ( i ) = "stop"
            end loop
        end inputLines
        
        inputLines
##Details
In the simple case, the optional *guiltyParty* and *quitReason* are omitted. The *guiltyParty *option is used to specify the position of failure. See *exceptionHandler* for an example of a **quit** statement used in conjunction with a handler. A handler, which is located at the beginning of a subprogram body, is given control when a **quit** is executed or a failure, such as division by zero, occurs in the subprogram.
The *guiltyParty* option is used to designate the location of the failure, for example, to tell the debugger what line is considered to be the location of the failure. A *guiltyParty* is one of:
 (a) < (b) >
If *guiltyParty* is omitted, the failure is considered to occur at the **quit** statement. If it is <, the failure is considered to occur at the call to the present subprogram. For example, if the present subprogram implements square root *sqrt* and is passed a negative argument, it can use < to specify that the caller provided a faulty argument. If *guiltyParty* is >, this means the failure has already occurred and is being passed on to the next handler or to the system. To summarize, the three possibilities for designating the location of the failure are:
 (a) < Caller is cause of failure (b) > The exception being handled is the cause. (c) (omitted *guiltyParty*)  The present **quit** is the cause.
The *quitReason* is an integer expression which is used to identify the kind of failure. If it is omitted, a default value is chosen in the following manner. If *guiltyParty* is omitted or is <, the default is 1. If *guiltyParty* is > and an exception handler is active, the default is the *quitReason* of the exception being handled. If no exception is being handled, the default is 1. In the case of program abortion, the implementation may pass the *quitReason* to the operating system or programming environment.

##See also
*exceptionHandler*, **[return.html](return)** and **[result.html](result)**.
