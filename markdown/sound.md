
# sound

## Syntax
**sound** ( _frequency_, _duration_ : **int** )

## Description
The **sound** procedure is used to cause the computer to sound a note of a given frequency for a given time. The frequency is in cycles per second (Hertz). The time duration is in milliseconds. For example, middle A on a piano is 440 Hertz, so **sound**(440, 1000) plays middle A for one second.


## Example
This program sounds the frequencies 100, 200 up to 1000 each for half a second.

        for i : 1 .. 10
            put i
            sound ( 100 * i, 500 )  % Sound note for 1/2 second
        end for
## Details
On IBM PC compatibles, the hardware resolution of duration is in units of 55 milliseconds. For example, **sound**(440, 500) will delay the program by about half a second, but may be off by as much as 55 milliseconds.


## Details
The **sound** procedure does not currently work under MacOOT.


## See also
**[play](play.html)** [statement](statement.html), which plays notes based on musical notation. For example, **[play](play.html)**("8C") plays an eighth note of middle C. See also the **[delay](delay.html)**, **[clock](clock.html)**, **[sysclock](sysclock.html)**, **[wallclock](wallclock.html)**, **[time](time.html)** and **[date](date.html)** statements.

See also predefined unit **[Music](musicmodule.html)**.

