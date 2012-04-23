
# assert

## Syntax
**assert** _trueFalseExpn_

## Description
An **assert** statement is used to make sure that a certain requirement is met. This requirement is given by the _trueFalseExpn_. The _trueFalseExpn_ is evaluated. If it is true, all is well and execution continues. If it is false, execution is terminated with an appropriate message.


## Example
Make sure that _n_ is positive.

        assert n > 0
## Example
This program assumes that the _textFile_ exists and can be opened, in other words, that the **open** will set the _fileNumber_ to a positive stream number. If this is not true, the programmer wants the program halted immediately.

        var fileNumber : int
        open : fileNumber, "textFile", read
        assert fileNumber > 0
## Details
In some Turing systems, checking can be turned off. If checking is turned off, **assert** statements may be ignored and as a result never cause termination.

