
#Dir.Get

##Syntax
**Dir.Get** (*streamNumber* : **int**) : **string**

##Description
**Dir.Get** is part of a series of four subprograms that help users get directory listings. **Dir.Get** is used to get the file names in the directory. Each time the function is called, it returns the next file name in the directory. The names are not sorted. When there are no more file names in the directory, **Dir.Get** returns the empty string.

##Details
If the **Dir.Get** call fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.

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
This means that you can only call the function by calling **Dir.Get**, not by calling **Get**.
