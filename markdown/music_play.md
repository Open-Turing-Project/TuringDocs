
#Music.Play

##Syntax
**Music.Play** ( *music* : **string** )

##Description
The **Music.Play** procedure is used to sound musical notes on the computer.
Sounds are produced synchronously on a per process basis. This means that when a process executes a **Music.Sound** or **Music.Play** command, it stops until the command is finished. However, other processes will continue to executing.

##Example
This program sounds the first three notes of the C scale.
        Music.Play ( "cde" )
##Example
This program plays from middle C to one octave above middle C and down again in 8th notes.
        Music.Play ( "8cdefgab>c" )
        Music.Play ( "<bagfedc" )
##Details
The syntax of the play string may be enhanced in the future.
The **Music.Play** procedure takes strings containing characters that specify notes, rests, sharps, flats and duration. The notes are the letters a to g (or A to G). A rest is p (for pause). A sharp is **+** and a flat is **-**. The durations are 1 (whole note), 2 (half note), 4 (quarter note), 8 (eight note) and 6 (sixteenth note). The character > raises to the next octave and < lowers. For example, this is the way to play C and then C sharp one octave above middle C with a rest between them, all in sixteenth notes:  **Music.Play**(">6cpc+"). Blanks can be used for readability and are ignored by **Music.Play**.
The **Music.Play** procedure requires that the machine have a sound card in order to play tones.

##Status
Exported qualified.
This means that you can only call the function by calling **Music.Play**, not by calling **Play**.

##See also
the **[music_sound.html](Music.Sound)** procedure, which makes a sound of a given frequency (Hertz) and duration (milliseconds).
