
#signal

##Syntax
A _signalStatement_ is:

**signal** _variableReference_




##Description
A **signal** statement is used in a concurrent program to wake up a process that is blocked (waiting on a condition variable). The statement can only be used inside a monitor (a special kind of module that handles concurrency). A **signal** statement operates on a **condition** variable (the _variableReference_), which is essentially a queue of sleeping processes. See **condition** for an example of a **signal** statement.



##Details
A **signal** statement wakes up one process that is doing a **wait** on the specified condition queue, if such a process exists. If the condition is deferred (or **timeout**; see **condition**), the signaler continues in the monitor, and the awakened process is allowed to continue only when the monitor becomes inactive. A signal to an _immediate_ (non-deferred) condition causes the signaled process to begin running in the monitor immediately. The signaling process waits to re-enter the monitor when the monitor becomes inactive.



##See also
**[condition.html](condition)** and **[wait.html](wait)**. See also **[monitor.html](monitor)** and **[fork.html](fork)**. See also **[empty.html](empty)**. See also **[pause.html](pause)**.


