
# play

## Syntax
**play** ( _music_ : **string** )

## Description
The **play** procedure is used to sound musical notes on the computer.


## Example
This program sounds the first three notes of the C scale.

        play ( "cde" )
## Example
This program plays from middle C to one octave above middle C and down again in 8th notes.

        play ( "8cdefgab>c" )
        play ( "<bagfedc" )
## Details
The **play** procedure takes strings containing characters that specify notes, rests, sharps, flats and  duration. The notes are the letters a to g (or A to G). A rest is p (for pause). A sharp is **+** and a flat is **-**. The durations are 1 (whole note), 2 (half note), 4 (quarter note), 8 (eight note) and 6 (sixteenth note). The character > raises to the next octave and < lowers. For example, this is the way to play C and then C sharp one octave above middle C with a rest between them, all in sixteenth notes:  **play**(">6cpc+"). Blanks can be used for readability and are ignored by **play**.

Under some systems such as UNIX, the **play** procedure may have no effect.

The current (1999) implementation does not support play.


## See also
the **[playdone](playdone.html)** function, which is used to see if a note has finished sounding. See also the **[sound](sound.html)** [procedure](procedure.html), which makes a [sound](sound.html) of a given frequency (Hertz) and duration (milliseconds).

See also predefined unit **[Music](musicmodule.html)**.

