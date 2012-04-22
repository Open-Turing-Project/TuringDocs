
#Music

##Description
This unit contains the predefined subprograms that deal with sound and music. Some of these routines have not been implemented at the time of the writing of this manual and will be implemented in future releases.
All routines in the **Music** module are exported qualified (and thus must be prefaced with "**Music.**").



##Entry Points

[music_play.html](**Play**) Plays a series of notes.
[music_playfile.html](**PlayFile**) Plays music from a file, returning when the file is finished playing. File must be in an allowable format.
[music_playfilereturn.html](**PlayFileReturn**) Plays music from a file, returning as soon as the music starts. File must be in an allowable format.
[music_playfileloop.html](**PlayFileLoop**) Plays music from a file, looping over and over. Returns as soon as the music starts. File must be in an allowable format.
[music_playfilestop.html](**PlayFileStop**) Immediately terminates any playing music files. 
[music_sound.html](**Sound**) Plays a specified frequency for a specified duration.
[music_soundoff.html](**SoundOff**) Immediately terminates any sound playing.


