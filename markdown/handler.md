
#handler

##Syntax
A _exceptionHandler_ is:


**handler** ( _id_ )
_statementsAndDeclarations_
**end** **handler**



##Description
An exception handler  is an optional block of statements and declarations in a subprogram (or process). It is activated when the program (or process) fails. This occurs, for example when dividing by zero.


##Example
This program parses the input stream using a stack. If the stack overflows (its top exceeds its maximum), a **quit** statement in the _push_ procedure aborts the parsing and gives control to the exception handler in the _parse_ procedure. The _parse_ procedure calls _parseExpn_ which calls _push_. If _push_ overflows the stack, it executes a **quit** and control is passed to the exception handler in the _parse_ procedure. The interrupted procedures (_parseExpn_ and _push_) are terminated and their local variables are deleted.

        const stackOverflow := 500
        const maxTop := 100
        var top : 0 .. maxTop := 0
        var stack : array 1 .. maxTop of int
        
        procedure push ( i : int )
            if top = maxTop then
                quit : stackOverflow
            end if
            top := top + 1
            stack ( top ) := i
        end push
        
        procedure parse
            handler ( exceptionNumber )
                put "Failure number ", exceptionNumber
                case exceptionNumber of
                label stackOverflow :
                    put "Stack has overflowed!!"
                 other exceptions handled here 
                label :         % Unexpected failures
                    quit >      % Pass exception further
                end case
            end handler
            parseExpn           % Eventually push is called
        end parse
##Details
See the **quit** statement for an explanation of its _quitReason_ (_stackOverflow_ in the first **quit** statement above) and its _guiltyParty_ (> in the second **quit** statement, meaning the exception is due to causes outside of this handler).

An exception handler can appear only in the body of a subprogram (or process), just preceding the declarations and statements. The form of a procedure is:

Exactly the same declarations and statements can appear in a handler as can appear in the subprogram body following the handler. In the absence of exceptions, handlers have no observable effect. A particular handler is activated (it becomes ready to handle an exception) when it is encountered during execution. It remains active until the subprogram (or process) containing it has completed, or the handler is given control. Activation of a handler when a previous handler is already active will cause exceptions to be passed to the newly-activated handler. In other words, handlers have a dynamic scope that begins when the exception handler is encountered and ends when the subprogram (or process) containing the handler has terminated or the handler is given control.

When a handler is given control, it becomes, in effect, a replacement for the declarations and statements following it. If the handler is in a function, it must terminate with a **result** statement or with a **quit**. If the handler is in a procedure (or process), the handler must terminate with a **return**, a **quit**, or by encountering the end of the handler (which is equivalent to a **return**).

When a handler terminates with a **result** or **return** statement (or by reaching the end of a procedure's handler), the subprogram's **post** condition (if any) must be true. A **quit** statement does not need to establish the **post** condition.

Programming with exception handlers easily leads to incomprehensible software, due to the difficulty of keeping track of the flow of control. One of the most insidious situations is when an exception occurs in a module, class or monitor and is propagated outside of the unit. This can leave the contained data in an inconsistent state; in the case of a monitor, it is left locked forever. To avoid this possibility, you can use a handler in each exported subprogram. If an exception in a process is not handled, the entire program is aborted. If an implementation allocates dynamic arrays on the heap, an exception may prevent the deallocation of such an array.

Without exception handling, a program executes according to the language definition or else is aborted. If an exception handler is active, instead of aborting, control is given to the handler. The _quitNumber_ for a system-detected failure is implementation-dependent. There is a file "_%exceptions_" which lists these numbers. The user program can simulate a system exception by doing a **quit** with the corresponding number.

If the user turns off checking  explicitly, the system may not detect failures. In some cases the failure may yield incorrect data or arbitrary behavior.

Some exceptions are unpredictable or implementation-dependent. For example, in _x_ := 24 div _i_ + 24 / _i_, if _i_ is zero, the exception could be either an integer or a real division by zero, because the order or evaluation is implementation-dependent.

        procedure [ pervasive ] id
            [ ( [ paramDeclaration {,paramDeclaration } ] ) ]
            [ import [ [var] id {, [var] id } ] ]
            [ pre trueFalseExpn ]
            [ init id := expn {, id := expn } ]
            [ post trueFalseExpn ]
            [ exceptionHandler ]
            statementsAndDeclarations
        end id
