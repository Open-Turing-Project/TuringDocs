
# Music.PlayFile

## Syntax
**Music.PlayFile** ( _fileName_ : **string** )

## Description
The **Music.PlayFile** procedure is used to play a file of music. The file must be in one of the acceptable formats and the machine, must have the appropriate hardware.

The _fileName_ parameter must give the format of the file:


WAV files   "WAV:filename" or "filename.WAV"
MP3 files   "MP3:filename" or "filename.MP3"
MIDI files   "MIDI:filename" or "filename.MIDI"


Sounds are produced synchronously on a per process basis. This means that when a process executes a **Music.Sound**, **Music.Play** or **Music.PlayFile** command, it stops until the command is finished. However, other processes will continue executing.


## Details
To play music while performing any other activity, the call to **Music.PlayFile** must be executed in its own **process**. The process is then called using the **fork** command. When a **fork** command is given, execution starts on the process (like a procedure call) _and_ continues following the **fork** command _at the same time_.


## Example
This program plays the music in the file "_branden3.wav_" while drawing ovals on the screen.

        process DoMusic
            loop
                Music.PlayFile ("branden3.wav")
            end loop
        end DoMusic
        
        fork DoMusic
        var x, y, clr : int
        loop
            x := Rand.Int (0, maxx)
            y := Rand.Int (0, maxy)
            clr := Rand.Int (0, maxcolor)
            Draw.FillOval (x, y, 30, 30, clr)
        end loop
## Details
To play a sound file requires that the computer be equipped with a sound card and speakers.


## Details
The Turing 4.1 software can play files in the following audio formats: WAVE (.wav) files, MIDI files (.midi or .mid), and MP3 files (.mp3). In general, MIDI files are the most efficient and thus are the preferred form for longer music pieces like background music. WAVE files can record anything, not just music, so are often used for sound effects.


## Details
The Turing 4.1 software can also play music on a compact disk. To play the complete contents of the compact disk, the filename is &#147;cd&#148;. To play a single track from a compact disk, the filename is &#147;cd:[track number]&#148;.

        Music.PlayFile ("cd")       % Play the entire CD
        Music.PlayFile ("cd:3")     % Play the third track on the CD
        
## Details
On the PC, different formats of music can play simultaneously. This means that a program might use a MIDI file as a background soundtrack and then use WAVE files for individual sound effects. The sound effects would not interfere with the background music. Playing a second music file with the same format as an already playing piece immediately halts the first piece and starts the second.  This can be used to stop a single type of music by playing a short silent piece of music.


## Example
This program bounces a maple leaf around the screen with background music and a sound effect when the maple leaf hits an edge. When the user presses any key, the program immediately exits.

        const STAR_SIZE : int := 80
        var pic, x, y, dx, dy : int
        var finished : boolean := false
        
        % Play sound effect once.
        process Boing
            Music.PlayFile ("boing.wav")
        end Boing
        
        % Loop playing background music until 'finished' is true.
        process BackgroundMusic
            loop
                exit when finished
                Music.PlayFile ("background.mid")
            end loop
        end BackgroundMusic
        
        % Get the original picture
        Draw.FillStar (3, 3, STAR_SIZE - 3, STAR_SIZE - 3, brightred)
        pic := Pic.New (0, 0, STAR_SIZE, STAR_SIZE)
        cls
        
        % Set the initial location and direction of movement
        x := Rand.Int (0, maxx - STAR_SIZE)
        y := Rand.Int (0, maxy - STAR_SIZE)
        dx := 1
        dy := 1
        
        fork BackgroundMusic    % Start background music playing
        
        loop
            if x + dx < 0 or x + dx > maxx - STAR_SIZE then
                dx := -dx
                fork Boing
            end if
            if y + dy < 0 or y + dy > maxy - STAR_SIZE then
                dy := -dy
                fork Boing
            end if
            x += dx
            y += dy
            Pic.Draw (pic, x, y, picCopy)
            exit when hasch
            Time.Delay (5)
        end loop
        
        % Stop the background music.
        finished := true
        Music.PlayFileStop
## See also
**[Music.PlayFileStop](music_playfilestop.html)** to halt a music file that is current playing, **[Music.PlayFileReturn](music_playfilereturn.html)** fora procedure that starts a music file playing and returns immediately(meaning that you do not need to use **process** and **fork**statements), and **[Music.PlayFileLoop](music_playfileloop.html)**that starts a music file playing continuously until it is stopped without the use of **process** or **fork**.


## Status
Exported qualified.

This means that you can only call the function by calling **Music.PlayFile**, not by calling **PlayFile**.

