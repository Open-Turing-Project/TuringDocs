
# File

## Description
This unit contains the predefined subprograms that deal with file manipulation on a whole-file basis (as opposed to manipulating the data in the file using **open** and **close**, etc.). These routines allow you to rename, copy and delete files, as well as get information about a file and get the free space on disk available for a file.

All routines in the File module are exported qualified (and thus must be prefaced with "**File.**").


## Entry Points

[**Exists**](file_exists.html)   Returns whether a file exists.
[**FullPath**](file_fullpath.html)   Returns the full absolute path name of a file.
[**Parent**](file_parent.html)   Returns the parent directory of a file or directory.
[**Status**](file_status.html)   Gets information about a file such as size, modification date, etc.
[**Copy**](file_copy.html)   Copies a file to another location.
[**Rename**](file_rename.html)   Renames a file or directory.
[**Delete**](file_delete.html)   Deletes a file.
[**DiskFree**](file_diskfree.html)   Gets the free space on the disk upon which a file or directory resides.



## Details
On the PC, a path name of a file or a directory can use either the forward slash or backward slash to separate directory names. The drive must be followed by a colon. Thus the following are legal path names:

On the Macintosh, a path name of a file or directory can use the standard Macintosh format of Volume Name:Directory Name:Directory Name:File Name or the Unix format of /Volume Name/Directory Name/Directory Name/File Name.  Note that the names can have spaces in them.

On UNIX systems, the path name must correspond to the UNIX standard of using a forward slash between parts of the path.

In general, you can achieve the greatest portability by using the UNIX standard for use in path names, as all Turing systems support it.



        x:\students\west\example.t
        c:/turing/test.t
        /west/binary.t  (uses the default drive).
                HSA:Applications:Turing Files:example.t
        /HSA/Applications/Turing Files/example.t
                /export/home/west/turing/example.t
        
