
#Music.PlayFileStop

##Syntax
**Music.PlayFileStop**

##Description
The **Music.PlayFileStop** procedure is used to to stop all music files currently playing. This includes processes that areexecuting the **Music.PlayFile** procedure (they exit immediatelyand start executing the next statement in the process), and the**Music.PlayFileReturn** and **Music.PlayFileLoop**statements, which simply stop playing the music.

##Details
In Turing, a program will not halt execution until all processes have terminated. This means that if you are playing background music, the program will not terminate, even if execution returns from the main program unless the background music is halted.

##Example
This program plays the background music for 30 seconds and then terminates. Note that it is important to set the flag (*finished*) before calling **Music.PlayFileStop**. If **Music.PlayFileStop** comes first, it is possible for the process to return from **Music.PlayFile**, loop around, skip over the **exit when**, and call **Music.PlayFile** again before the *finished* flag is set.
        var finished : boolean := false

	% Loop playing background music until 'finished' is true.
        process BackgroundMusic
            loop
                exit when finished
                Music.PlayFile ("background.mid")
            end loop
        end BackgroundMusic
        
        fork BackgroundMusic    % Start the background music
        Time.Delay (30000)  % Wait for 30 seconds
        
        % Stop the background music.
        finished := true        % The flag must be set first
        Music.PlayFileStop  % Music.PlayFile will return immediately
        
##See also
**[music_playfile.html](Music.PlayFile)** for playing music files and a larger example.

##Status
Exported qualified.
This means that you can only call the function by calling **Music.PlayFileStop**, not by calling **PlayFileStop**.
