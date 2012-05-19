
# Music

## Description
This unit contains the predefined subprograms that deal with sound and music. Some of these routines have not been implemented at the time of the writing of this manual and will be implemented in future releases.

All routines in the **Music** module are exported qualified (and thus must be prefaced with "**Music.**").


## Entry Points

[**Play**](music_play.html)   Plays a series of notes.  
[**PlayFile**](music_playfile.html)   Plays music from a file, returning when the file is finished playing. File must be in an allowable format.  
[**PlayFileReturn**](music_playfilereturn.html)   Plays music from a file, returning as soon as the music starts. File must be in an allowable format.  
[**PlayFileLoop**](music_playfileloop.html)   Plays music from a file, looping over and over. Returns as soon as the music starts. File must be in an allowable format.  
[**PlayFileStop**](music_playfilestop.html)   Immediately terminates any playing music files.   
[**Sound**](music_sound.html)   Plays a specified frequency for a specified duration.  
[**SoundOff**](music_soundoff.html)   Immediately terminates any sound playing.  
