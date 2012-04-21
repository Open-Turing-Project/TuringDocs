
#wait

##Syntax
A *waitStatement* is:
 **wait** *variableReference* [ , *expn* ]

##Description
The **wait** statement is used in a concurrent program to cause the executing process to be blocked (to go to sleep) until it is awakened by a **signal** statement. The statement can only be used inside a monitor (a special kind of module that handles concurrency). A **wait** statement operates on a **condition** variable (the *variableReference*), which is essentially a queue of sleeping processes. See **condition** for an example of a **wait** statement.

##Details
A **wait** statement for a priority condition must include the optional *expn*,. This expression must be a non-negative **int** value which is used to order processes waiting for the condition, low numbers first.
A **wait** statement for a **timeout** condition must include the optional *expn*, which must be a non-negative **int** value which gives the *timeout interval*. *A *process waiting for a timeout condition is implicitly awakened if it waits longer than its timeout interval.

##See also
**[condition.html](condition)** and **[signal.html](signal)**. See also **[monitor.html](monitor)** and **[fork.html](fork)**. See also **[empty.html](empty)**. See also **[pause.html](pause)**.
