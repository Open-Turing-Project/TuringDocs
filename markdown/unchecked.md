
#unchecked

##Description
OOT adds the concept of "unchecked" to Turing. Here, you can request that certain run time tests, which take place by default, can be eliminated. This  makes the program more efficient  at the risk of unreliability.



##Example
Declare _p_ to be an unchecked pointer to an integer (see **pointers** for details). Pointer _p _will be dangerous to use, because the run time system will not check to see if it actually locates an integer, as opposed to arbitrary computer memory. In other words, unchecked pointers are like C language pointers.


        var p : unchecked ^ int
##Example
Declare _C_ to be an unchecked collection of records of type _R_ (see **collections** for details). Pointers to _C_ will be unchecked.


        var C : unchecked collection of R
##Example
Remove checking from the body of a loop.


        for i : 1 .. 500
            unchecked
            if a ( i ) = key then
                exit
            end if
        end for
##Details
In the above example, the **unchecked** keyword requests that all checking, in particular, array bounds checking for array _a_, are to be omitted. The disabling lasts from the occurrence of the keyword **unchecked** to the end of the surrounding construct, in this case, until **end** **for**. In a similar way, the checked keyword will request that checking be re-enabled from the occurence of **checked** to the end of the surrounding construct.
In the current (1999) implementation, the use of **unchecked** to turn off checking in a block of statements is ignored. In general, an implementation may choose to ignore requests to disable checking.


