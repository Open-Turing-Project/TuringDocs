
#read

##Syntax
A *readStatement* is:
 **read** : *fileNumber* [ : *status* ] , *readItem* { ,*readItem* }

##Description
The **read** statement inputs each of the *readItems* from the specified file. These items are input directly using the *binary* format that they have on the file. In other words, the items are not in source (ASCII or EBCDIC) format. In the common case, these items have been output to the file using the **write** statement.
By contrast, the **get** and **put** statements use source format, which a person can read using an ordinary text editor.

##Example
This example shows how to input a complete employee record using a **read** statement.
        var employeeRecord :
            record
                name : string ( 30 )
                pay : int
                dept : 0 .. 9
            end record
        var fileNo : int
        open : fileNo, "payroll", read
        
        read : fileNo, employeeRecord
##Details
The *fileNumber* must specify a file that is open with **read** capability (or a program argument file that is implicitly opened).
The optional *status* is an **int** variable that is set to implementation-dependent information about the **read**. If *status* is returned as zero, the read was successful. Otherwise *status* gives information about the incomplete or failed **read** (which is not documented here). You commonly use *status *when you are reading a record or array from a file and you are not sure if the entire item exists on the file. If it does not exist, the **read** will fail part way through, but your program can continue and diagnose the problem by inspecting *status*.
A *readItem* is:
Each *readItem* specifies a variable to be read in internal form. The optional *requestedSize* is an integer value giving the number of bytes of data to be read. The *requestedSize* should be less than or equal to the size of the item's internal form in memory (else a warning message is issued). If no *requestedSize* is given, the size of the item in memory is used. The optional *actualSize* is an **int** variable that is set to the number of bytes actually read.
An array, record or union may be read and written as a whole.
It is dangerous to read into pointer variables, as this allows the possibility of creating incorrect addresses in the pointers. It is also dangerous to read more bytes than are in the *readItem*.
        variableReference [ : requestedSize [ : actualSize ] ]
##See also
the **[write.html](write)**, **[open.html](open)**, **[close.html](close)**, **[seek.html](seek)**, **[tell.html](tell)**, **[get.html](get)** and **[put.html](put)** statements.
