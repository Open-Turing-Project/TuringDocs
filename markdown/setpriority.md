
# setpriority

## Syntax
**setpriority** ( _p_ : **nat** )

## Description
The **setpriority** procedure is used to set the priority of a process in a concurrent program. This priority cannot  be counted on to guarantee critical access to shared variables. A smaller value of _p_ means increased speed. The argument to **setpriority** may be limited to the range 0 to 2**15 - 1.


## See also
**[getpriority](getpriority.html)**, **[fork](fork.html)** and **[monitor](monitor.html)**.

See also predefined unit **[Concurrency](concurrencymodule.html)**.

