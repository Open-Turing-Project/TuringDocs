
#tell

##Syntax
An _tellStatement_ is:

**tell** : _fileNumber_ , _filePositionVar_




##Description
The **tell** statement sets _filePositionVar_, whose type must be **int**, to the current offset in bytes from the beginning of the specified file. The _fileNumber_ must specify a file that is open with **seek** capability (or else a program argument file that is implicitly opened). The **tell** statement is useful for recording the file position of a certain piece of data for later access using **seek**.



##Example
This example shows how to use **tell** to record the location of a record in a file. This location is later used by **seek** to allow the record to be read.


        var employeeRecord :
            record
                name : string ( 30 )
                pay : int
                dept : 0 .. 9
            end record
        var fileNo : int
        var location : int
        open : fileNo, "payroll", write, seek
        
        tell : fileNo, location         % Make note of this location
        write : fileNo, employeeRecord  % Write record at this location
        
        seek : fileNo, location     % Go back to location
        read : fileNo, employeeRecord   % Read the record
                            % that was previously written
##See also
the **[read.html](read)**, **[write.html](write)**, **[open.html](open)**, **[close.html](close)**, **[seek.html](seek)**, **[get.html](get)** and **[put.html](put)** statements.


