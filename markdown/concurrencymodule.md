
# Concurrency

## Description
This unit contains the predefined procedures that deal with concurrency. It contains one predefined function, although conceptually it contains three other subprograms.

All routines in the Concurrency module are exported unqualified. (This means you can call the entry points directly.)


## Entry Points

[**empty**](concurrency_empty.html)*   Returns true if no processes are waiting on the condition queue.  
[**getpriority**](concurrency_getpriority.html)*   Returns the priority of the current process.  
[**setpriority**](concurrency_setpriority.html)*   Sets the priority of the current process.  
[**simutime**](concurrency_simutime.html)   Returns the number of simulated time units that have passed.  


* Part of the language, conceptually part of the **Concurrency** unit.

