
#Dir.Close

##Syntax
**Dir.Close** (*streamNumber* : **int**)

##Description
**Dir.Close** is part of a series of four subprograms that help users get directory listings. **Dir.Close** is used to close a directory stream number opened by **Dir.Open**. After the directory stream number is closed, it can not be used with **Dir.Get** or **Dir.GetLong**.

##Details
If the **Dir.Close** call fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.

##Example
This program prints a listing of all the files in the directory *datafiles*.
        var streamNumber : int
        var fileName : string
        streamNumber := Dir.Open ("datafiles")
        assert streamNumber > 0
        loop
            fileName := Dir.Get (streamNumber)
            exit when fileName = ""
            put fileName
        end loop
        Dir.Close (streamNumber)
##Status
Exported qualified.
This means that you can only call the function by calling **Dir.Close**, not by calling **Close**.
