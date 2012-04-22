
#Concurrency

##Description
This unit contains the predefined procedures that deal with concurrency. It contains one predefined function, although conceptually it contains three other subprograms.
All routines in the Concurrency module are exported unqualified. (This means you can call the entry points directly.)



##Entry Points

[concurrency_empty.html](**empty**)* Returns true if no processes are waiting on the condition queue.
[concurrency_getpriority.html](**getpriority**)* Returns the priority of the current process.
[concurrency_setpriority.html](**setpriority**)* Sets the priority of the current process.
[concurrency_simutime.html](**simutime**) Returns the number of simulated time units that have passed.

* Part of the language, conceptually part of the **Concurrency** unit.


