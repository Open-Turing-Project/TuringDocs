
#seek

##Syntax
A *seekStatement* is one of:
 (a)**seek** : *fileNumber *, *filePosition* (b)**seek** : *fileNumber* , *



##Description
Random access of both source (ASCII or EBCDIC) and internal form (binary) files is provided by the **seek** and **tell** statements. The **seek** statement repositions the specified file so that the next input/output operation will begin at the specified point (*filePosition*) in the file.
The *fileNumber* must specify a file that is open with **seek** capability. The *filePosition* is a non-negative integer offset in bytes from the beginning of the file. Usually, this is a number returned by the **tell** statement. (The first position in the file is position zero.)
Form (b) specifies that the next operation is to begin at the position immediately following the current end of the file. A *filePosition* of zero specifies that the next operation is to start at the beginning of the file. Seeking to a position beyond the current end of the file and then writing, automatically fills the intervening positions with the internal representation of zero.



##Example
This example shows how to use **seek** to append to the end of a file.


        var employeeRecord :
            record
                name : string ( 30 )
                pay : int
            end record
        var fileNo : int
        open : fileNo, "payroll", write, seek, mod
        seek : fileNo, *        % Seek to the end of the file
        write : fileNo, employeeRecord
                        % This record is added to the end of the file
##See also
**[read.html](read)**, **[write.html](write)**, **[open.html](open)**, **[close.html](close)**, **[tell.html](tell)**, **[get.html](get)** and **[put.html](put)** statements. Another example use of **[](seek)** is given with the explanation of the **[tell.html](tell)** [statement.html](statement).


