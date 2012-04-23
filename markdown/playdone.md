
# playdone

## Syntax
**playdone** : **boolean**

## Description
The **playdone** function is used to determine when notes played by the **play** procedure have finished sounding.


## Example
This program sounds the first three notes of the C scale and outputs "All done" as soon as they are finished. Without the loop, the message would come out before the notes are finished.

        play ( "cde" )
        loop
            exit when playdone
        end loop
        put "All done"
## Details
Under some systems such as UNIX, the **playdone** procedure may be meaningless.


## See also
the **[play](play.html)** [procedure](procedure.html). See also the **[sound](sound.html)** [procedure](procedure.html) which makes a [sound](sound.html) of a given frequency (Hertz) and duration (milliseconds).

See also predefined unit **[Music](musicmodule.html)**.

