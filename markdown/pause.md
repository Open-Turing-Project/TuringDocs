
#pause

##Syntax
A _pauseStatement_ is:


**pause** _expn_



##Description
The **pause** statement blocks the program (or just the process in the case of a concurrent program) for a given number of simulated time units. The _expn_ must be a non-negative **int** value giving the number of time units. This is analogous to the **delay** statement, which causes blocking for a given amount of real time (actual physical time).

The interpreter maintains a counter which it considers to be simulated time. The only execution that causes this counter to increase is the **pause** statement. The process executing the **pause** is blocked until the counter has counted forward the number of units given by _expn_. All other statements (except **wait**) are considered to be infinitely fast. Several processes can be executing **pause** statements simultaneously.

The use of simulated time allows Turing to be used as a simulation language in which the **pause** statement simulates the passage of time in the simulated system.

