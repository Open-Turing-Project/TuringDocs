
#Dir.GetLong

##Syntax
**Dir.GetLong** (*streamNumber* : **int**, **var** *entryName* : **string**,    **var** *size*, *attribute*, *fileTime* : **int**)



##Description
**Dir.GetLong** is part of a series of four subprograms that help users get directory listings. **Dir.GetLong** is used to get the names and assorted information of the files in the directory. Each time the function is called, it returns the name and information of the next file in the directory. The names are not sorted. When there are no more file names in the directory, **Dir.GetLong** returns the empty string in the *entryName* parameter.
The *size* parameter is the size of the file in bytes. The *attribute* parameter has its individual bits set as follows (the individual bits can be extracted using the **bits** operator):
Bit 0  *attrDir*   set to 1 if entry is a directory.
Bit 1  *attrRead*  set to 1 if the program can read the file.
Bit 2  *attrWrite*  set to 1 if the program can write the file.
Bit 3  *attrExecute*  set to 1 if the program can execute the file.
Bit 4  *attrHidden*  set to 1 if the entry if a hidden file (PC, Mac).
Bit 5  *attrSystem*  set to 1 if the entry is a system file (PC only).
Bit 6  *attrVolume*  set to 1 if the entry is a volume name (PC only).
Bit 7  *attrArchive*  set to 1 if the entry has archive bit set (PC only).
The *attr...* constants are defined in the **Dir** unit. They correspond to the values of *attribute* if a specified bit is set.  For example, *attrSystem* is the value of the *attribute* parameter if bit 5 is set to 1. You can **and** or **or **these constants to get combinations of specific file attributes. 
The *fileTime* is the time of last modification of the file. It is returned as the number of seconds since 00:00:00 GMT 1/1/1970. To convert this to a string, use **Time.SecDate**



##Details
If the **Dir.GetLong** call fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.



##Example
This program prints a listing of all the files in the directory *datafiles*.


        var streamNumber : int
        var fileName : string
        var size, attribute, fileTime : int
        streamNumber := Dir.Open ("datafiles")
        assert streamNumber > 0
        loop
            Dir.GetLong (streamNumber, fileName, size, attribute, fileTime)
            exit when fileName = ""
            put fileName, "  ", Time.SecDate (fileTime)
        end loop
        Dir.Close (streamNumber)
##Example
This program prints a listing of the attributes of all the files in the current directory.


        var streamNumber : int
        var fileName : string
        var size, attribute, fileTime : int
        streamNumber := Dir.Open (Dir.Current)
        assert streamNumber > 0
        loop
            Dir.GetLong (streamNumber, fileName, size, attribute, fileTime)
            exit when fileName = ""
            put fileName, "  "..
            if (attribute and attrDir) not= 0 then
                put "Directory  "..
            end if
            if (attribute and attrRead) not= 0 then
                put "Readable  "..
            end if
            if (attribute and attrWrite) not= 0 then
                put "Writeable  "..
            end if
            if (attribute and attrExecute) not= 0 then
                put "Executable  "..
            end if
            put ""
        end loop
        Dir.Close (streamNumber)
##Status
Exported qualified.
This means that you can only call the function by calling **Dir.GetLong**, not by calling **GetLong**.


