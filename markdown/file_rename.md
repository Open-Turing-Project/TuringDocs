
# File.Rename

## Syntax
**File.Rename** (_srcPathName_, _destName_ : **string**)

## Description
**File.Copy** renames a file or directory named by the _srcPathName_ parameter to the _destName_ parameter. The _destName_ parameter must be a name only. In other words **File.Rename** can't move a file between different directories.


## Details
If the **File.Rename** call fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.


## Example
This program renames the file "_/usr/west/example_" to "_testcase_"

        File.Rename ("/usr/west/example", "testcase")
        if Error.Last = eNoError then
            put "File renamed"
        else
            put "Did not rename the file."
            put "Error: ", Error.LastMsg
        end if
## Execute
An example program is available that creates a file in the current directory, renames it to a different name using **File.Rename**, checks the existence of both files using **File.Exists** and then deletes the file using **File.Delete**.




## Status
Exported qualified.

This means that you can only call the function by calling **File.Rename**, not by calling **Rename**.

