
#Music.Sound

##Syntax
**Music.Sound** ( *frequency*, *duration* : **int **)



##Description
The **Music.Sound **statement is used to cause the computer to sound a note of a given frequency for a given time. The frequency is in cycles per second (Hertz). The time duration is in milliseconds. For example, middle A on a piano is 440 Hertz, so **Music.Sound**(440, 1000) plays middle A for one second.
Sounds are produced synchronously on a per process basis. This means that when a process executes a **Music.Sound** or **Music.Play** command, it stops until the command is finished. However, other processes will continue executing.



##Example
This program plays a siren sound in the background.


        process siren
            loop
                for i : 100 .. 3000 by 100
                    Music.Sound ( i, 50 )   % Sound note
                end for
                for decreasing i : 2900 .. 200 by 100
                    Music.Sound ( i, 50 )   % Sound note
                end for
            end loop
        end siren
        
        fork siren
         the rest of the program goes here while the siren continues 
##Status
Exported qualified.
This means that you can only call the function by calling **Music.Sound**, not by calling **Sound**.



##See also
**[music_play.html](Music.Play)** statement, which plays notes based on musical notation. For example, **[music_play.html](Music.Play)**("8C") plays an eighth note of middle C.


