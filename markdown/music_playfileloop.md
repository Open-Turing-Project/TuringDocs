
# Music.PlayFileLoop

## Syntax
**Music.PlayFileLoop** ( _fileName_ : **string** )

## Description
The **Music.PlayFileLoop** procedure is used to play a file of music continuously, looping until the program is halted or the **Music.PlayFileStop** command is given. The file must be in one of the acceptable formats and the machine, must have the appropriate hardware.

The _fileName_parameter must give the format of the file:


WAV files   "WAV:filename" or "filename.WAV"  
MP3 files   "MP3:filename" or "filename.MP3"  
MIDI files   "MIDI:filename" or "filename.MIDI"  


The **Music.PlayFileLoop** procedure is used to provide continuous background music for a program.When called, the music starts playing, and the procedure returns immediately.


## Details
Unlike **Music.PlayFile**, the **Music.PlayFileLoop** procedure does not have to be called in a separate process. However, the music will not stop playing (nor will a program that calls this procedure terminate) until **Music.PlayFileStop** is called.


## Example
This program continuously plays the music in the file "_branden3.wav_" while drawing ovals on the screen.

        Music.PlayFileLoop ("branden3.wav")
        var x, y, clr : int
        loop
            x := Rand.Int (0, maxx)
            y := Rand.Int (0, maxy)
            clr := Rand.Int (0, maxcolor)
            Draw.FillOval (x, y, 30, 30, clr)
            exit when hasch
        end loop
        Music.PlayFileStop
## Details
To play a sound file requires that the computer be equipped with a sound card and speakers.


## Details
The Turing 4.1 software can play files in the following audio formats: WAVE (.wav) files, MIDI files (.midi or .mid), and MP3 files (.mp3). In general, MIDI files are the most efficient and thus are the preferred form for longer music pieces like background music. WAVE files can record anything, not just music, so are often used for sound effects.


## Details
The Turing 4.1 software can also play music on a compact disk. Toplay the complete contents of the compact disk, the filename is &#147;cd&#148;. To play a single track from a compact disk, the filename is &#147;cd:[track number]&#148;.

        Music.PlayFileLoop ("cd")       % Play the entire CD
        Music.PlayFileLoop ("cd:3")     % Play the third track on the CD
        
## Details
On the PC, different formats of music can play simultaneously. This means that a program might use a MIDI file as a background soundtrack and then use WAVE files for individual sound effects. The sound effects would not interfere with the background music. Playing a second music file with the same format as an already playing piece immediately halts the first piece and starts the second.  This can be used to stop a single type of music by playing a short silent piece of music.


## Example
This program bounces a maple leaf around the screen with background music and a sound effect when the maple leaf hits an edge. When the user presses any key, the program immediately exits.

        const STAR_SIZE : int := 80
        var pic, x, y, dx, dy : int
        
        % Get the original picture
        Draw.FillStar (3, 3, STAR_SIZE - 3, STAR_SIZE - 3, brightred)
        pic := Pic.New (0, 0, STAR_SIZE, STAR_SIZE)
        cls
        
        % Set the initial location and direction of movement
        x := Rand.Int (0, maxx - STAR_SIZE)
        y := Rand.Int (0, maxy - STAR_SIZE)
        dx := 1
        dy := 1
        
        Music.PlayFileLoop ("background.mid") % Start background music playing
        
        loop
            if x + dx < 0 or x + dx > maxx - STAR_SIZE then
                dx := -dx
                Music.PlayFileReturn ("boing.wav")
            end if
            if y + dy < 0 or y + dy > maxy - STAR_SIZE then
                dy := -dy
                Music.PlayFileReturn ("boing.wav")
            end if
            x += dx
            y += dy
            Pic.Draw (pic, x, y, picCopy)
            exit when hasch
            Time.Delay (5)
        end loop
        
        % Stop the background music.
        Music.PlayFileStop
## See also
**[Music.PlayFileStop](music_playfilestop.html)** to halt a music file that is current playing.


## Status
Exported qualified.

This means that you can only call the function by calling **Music.PlayFileLoop**, not by calling **PlayFileLoop**.

