
#open

##Syntax
An *openStatement* is one of:
 (a)**open** : *fileNumberVar*, *fileName*, *ioCapability*      { , *ioCapability* } (b)**open** : *fileNumberVar*, *argNum*, *ioCapability*      { , *ioCapability* }

##Description
The **open** statement connects the program to a file so the program can perform operations such as **read** on the file. In form (a), the **open** statement translates a *fileName*, such as "Master", to a file number such as 5. Form (b), which is less-commonly used, opens a file whose name is given by a program argument. This is described below.
The **read** statement uses the file number, not the file name, to access the file. When the program is finished using the file, it disconnects from the file using the **close** statement. Each *ioCapability* is the name of an operation, such as **read**, that is to be performed on the file.

##Example
This programs illustrates how to open, read and then close a file.
        var fileName : string := "Master"   % Name of file
        var fileNo : int                % Number of file
        var inputVariable : string ( 100 )
        open : fileNo, fileName, read
        
        read : fileNo, inputVariable
        
        close : fileNo
##Details
The **open** statement always sets the *fileNumber* to a positive number. If the **open** fails (generally because the file does not exist), the *fileNumber* is set to a non-positive number. It is wise to check that the stream number is greater than zero before using it further.
An *ioCapability* is one of:
 **get**, **put**, **read**, **write**, **seek**, **mod**
A file can be accessed using only the statements corresponding to the input/output capabilities with which it was opened. Note: **tell** is allowed only if the open is for **seek**.
The **open** statement truncates the file to length zero if the *ioCapabilities* includes **put** or **write** but not **mod** (which stands for **mod**ify). In all other cases, **open** leaves the existing file intact. The **mod** *ioCapability* specifies that the file is to be modified without being truncated. Each **open** positions to the beginning of a file. There is no mechanism to delete a file.
To open for appending to the end of the file, one has to **open** for **seek**, **mod** and for **write** or **put** and then **seek** to the end of the file. See the **seek** statement.
*Mixed mode* files, which combine **get** and **read** (or **put** and **write**), are supported by some operating systems, such as UNIX, but not by others, such as Microsoft Windows.
On Microsoft Windows, one should note that opening files in other directories uses the backslash character. This is because the backslash is a special character in Turing (as in \t for tab and \n for a newline). To get a single backslash, use \\.
Form (b) of the syntax  allows you to open a file whose name is given as a program argument on the command line. For example, under UNIX, the command line:
specifies to execute *prog.x* with program arguments *infile* and *outfile*. Similarly, in the Turing programming environment, the **run** command can accept program arguments. The *argNumber* is the position of the argument on the command line. (The first argument is number 1.)  The name of the file to be opened is the corresponding program argument. If there is no such argument, or if the file cannot be opened successfully, *fileNumberVariable* is set to zero. See also **nargs**, which gives the number of arguments, and **fetcharg**, which gives the *n*-th argument string.
Program argument files referenced by argument number and used in **put**, **get**, **read** or **write** statements need not be explicitly opened, but are implicitly opened with the capability corresponding to the input/output statement in which they are first used. (The *fileNumber*gives the number of the argument.)
The operating system standard files (error, output and input) are accessed using file numbers 0, -1, and -2, respectively (although this may be subject to change). These files are not opened explicitly, but are used simply by using form (b) with the number. Beware of the anomalous case of a failed open that gives you file number 0. A subsequent use of this number in a **put** will produce output that goes to the standard error stream, with no warning that the file you attempted to open is not actually being used.
To append to a file, the file must be opened with the **mod** and **seek** capability and then there must be a seek to the end of file. For example:
There is an older and still acceptable version of **open** that has this syntax:
The *mode* must be "r" (for **get**) or "w " (for **put**).
        e.g. open : f, "C:\\STUDENTS\\SMITH\\ACCT.DAT", put        prog.x infile outfile        var streamnumber : int
        open : streamnumber, "myfile", put, mod, seek
        seek : streamnumber, *
        put : streamnumber, "This appears at the end of the file"        open ( var fileNumber : int, fileName : string, mode : string)
##Details
The path name specified in the open statement and elsewhere can always be in UNIX format (i.e. with forward slashes, an initial forward slash indicating an absolute directory). On the PC, absolute paths would have the form:
On the Macintosh, they would have the form:
Note that in addition to the UNIX path format, on the PC, you can always use standard PC path notation and on the Macintosh, you can use standard Macintosh path notation. On the Macintosh volume, directory and file names can have spaces in them.
All routines (such as the File and Dir module routines) will return files names in UNIX format, regardless of the machine the program is run on.
            a:/dir1/dir2/filename            /volume name/directory1/directory2/file name
##See also
**[close.html](close)**, **[get.html](get)**, **[put.html](put)**, **[read.html](read)**, **[write.html](write)**, **[seek.html](seek)** and **[tell.html](tell)** statements.
