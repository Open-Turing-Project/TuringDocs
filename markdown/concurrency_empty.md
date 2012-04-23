
# Concurrency.empty

## Syntax
**empty** (_variableReference_) : **boolean**

## Description
The **empty** function is used in a concurrent program.  It returns **true** if the _variableReference_, which must be a condition variable, has no processes waiting for it.  Processes join the queue of a condition variable by executing the **wait** statement, and are awakened by the **signal** statement.


## Status
Part of the language and only conceptually part of the **Concurrency** unit. 

This means that you can only call the function by calling **empty**, not by calling **Concurrency.empty**.


## See also
**[condition](condition.html)**, **[wait](wait.html)**, **[signal](signal.html)**, **[fork](fork.html)** and **[monitor](monitor.html)**.

