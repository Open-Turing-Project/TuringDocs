
#length

##Syntax
**length** ( *s* : **string** ) : **int**



##Description
The **length** function returns the number of characters in the string. The string must be initialized. For example, **length**("table") is 5.



##Example
This program inputs three words and outputs their lengths.
If the words are "cat", "robin" and "crow", the program will output 3, 5 and 4.


        var word : string
        for i : 1 .. 3
            get word
            put length ( word )
        end for
##Details
The **length** function gives the current length of the string. To find the maximum length of a string, use **upper**. For example, given the declaration **var** s : **string** (10), **upper** (*s*) returns 10.



##See also
**[upper.html](upper)**.


