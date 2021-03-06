
# sysclock

## Syntax
**sysclock** ( **var** _c_ : **int** )

## Description
The **sysclock** statement is used on a multitasking system such as UNIX to determine the amount of time that has been used by this program (process). Variable _c_ is assigned the number of central processor milliseconds assigned to this program. This is of little use on a personal computer, where **sysclock** returns the same value as **clock**.


## Example
On a UNIX system, this program tells you how much time it has used.

        var timeUsed : int
        sysclock ( timeUsed )
        put "This program has used ", timeUsed,
                " milliseconds of CPU time"
## See also
**[delay](delay.html)**, **[time](time.html)**, **[clock](clock.html)**, **[wallclock](wallclock.html)** and **[date](date.html)** statements.

See also predefined unit **[Time](timemodule.html)**.

