
#write

##Syntax
A _writeStatement_ is:

**write** : _fileNumber_ [:_status_ ], _writeItem_ {, _writeItem_}




##Description
The **write** statement outputs each of the _writeItems_ to the specified file. These items are output directly using the _binary_ format that they have in the computer. In other words, the items are not in source (ASCII or EBCDIC) format. In the common case, these items will later be input from the file using the **read** statement. By contrast, the **get** and **put** statements use source format, which a person can read using a text editor.



##Example
This example shows how to output a complete employee record using a **write** statement.


        var employeeRecord :
            record
                name : string ( 30 )
                pay : int
                dept : 0 .. 9
            end record
        var fileNo : int
        open : fileNo, "payroll", write
        
        write : fileNo, employeeRecord
##Details
An array, record or union may be read and written as a whole. The _fileNumber_ must specify a file that is open with **write** capability (or else a program argument file that is implicitly opened).
The optional _status_ is an **int** variable that is set to implementation-dependent information about the **write**. If _status_ is returned as zero, the **write** was successful. If _status_ is not returned as zero, _status_ gives information about the incomplete or failed **write** (which is not documented here). Programmers often use _status_ when they are writing a record or array to a file and are not sure if there is enough room on the disk to hold the item. If there is not enough room, the **write** will fail part way through, but the program can continue and diagnose the problem by inspecting _status_.
A _writeItem_ is:
Each _writeItem_ is a variable or constant, to be written in internal form. The optional _requestedSize_ is an integer expression giving the number of bytes of data to be written. The _requestedSize_ should be less than or equal to the size of the item's internal form in memory (if it is not, a warning message is issued). If no _requestedSize_ is given, the size of the item in memory is used. The optional _actualSize_ is set to the number of bytes actually written.


        reference [ : requestedSize [ : actualSize ] ]
##See also
**[](write)**, **[open.html](open)**, **[close.html](close)**, **[seek.html](seek)**, **[tell.html](tell)**, **[get.html](get)** and **[put.html](put)** statements.


