
#close

##Syntax
A *closeStatement* is:
 **close** : *fileNumber*

##Description
In Turing, files are read and written using a *fileNumber*. In most cases, this number is given a value using the **open** statement, which translates a file name, such as "Master", to a file number, such as 5. When the program is finished using the file, it disconnects from the file using the **close** statement.

##Example
This program illustrates how to open, read and then close a file.
        var fileName : string := "Master"   % Name of file
        var fileNo : int                % Number of file
        var inputVariable : string (100)
        open : fileNo, fileName, read
        
        read : fileNo, inputVariable
        
        close : fileNo
##Details
In a Turing implementation, there will generally be a limit on the number of currently open files. This limit will typically be around 20. To avoid exceeding this limit, a program that uses many files one after another should close files that are no longer in use.
If a program does not close a file, the file will be automatically closed when the program finishes.
There is an older and still acceptable version of **close** that has this syntax:
        close (fileNumber : int)
##See also
the **[open.html](open)**, **[get.html](get)**, **[put.html](put)**, **[read.html](read)**, **[write.html](write)**, **[seek.html](seek)** and **[tell.html](tell)** statements.
