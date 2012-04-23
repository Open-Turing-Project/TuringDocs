
# Dir.Open

## Syntax
**Dir.Open** (_directoryPathName_ : **string**) : **int**

## Description
**Dir.Open** is part of a series of four subprograms that help users get directory listings. **Dir.Open** returns a directory stream number if the directory could be opened. This stream number can be used to get file names and information using the **Dir.Get** and **Dir.GetLong** subprograms. After getting the listing, the user should call **Dir.Close**.


## Details
If the **Dir.Open** call fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.


## Example
This program prints a listing of all the files in the current directory.

        var streamNumber : int
        var fileName : string
        streamNumber := Dir.Open (Dir.Current)
        assert streamNumber > 0
        loop
            fileName := Dir.Get (streamNumber)
            exit when fileName = ""
            put fileName
        end loop
        Dir.Close (streamNumber)
## Status
Exported qualified.

This means that you can only call the function by calling **Dir.Open**, not by calling **Open**.

