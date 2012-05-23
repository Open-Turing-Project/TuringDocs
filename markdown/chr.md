
# chr

## Syntax
**chr** (_i_ : **int**) : **char**

## Description
The **chr** function is used to convert an integer to a character.The character is the _i_-th character of the ASCII sequence of characters (except on the IBM mainframe, which uses the EBCDIC sequence.)  For example, **chr** (65) is "A".

The **ord** function is the inverse of **chr**, so for any character _c_,:


**chr**(**ord** (_c_)) = _c_.  



## Details
There are two sets of characters representing values 128-255: the ANSI values (the default values for Windows), and the MS-DOS OEMcharacter set, which contains various line drawing characters. To use the MS-DOS character set, you must use the **`setscreen ("msdos")`** command.


## Example
Another example is available that displays the entire characters set, both the regular ANSI character set and the MS_DOS OEMcharacter set.




## See also
**[ord](ord.html)**, **[intstr](intstr.html)** and **[strint](strint.html)** functions.

