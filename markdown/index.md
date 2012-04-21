
#index

##Syntax
**index** (*s *, *patt* : **string** ) : **int**

##Description
The **index** function is used to find the position of *patt *within string *s*. For example, **index** ( "chair", "air" ) is 3.

##Example
This program outputs 2, because "ill" is a substring of "willing", starting at the second character of "willing".
        var word : string := "willing"
        put index ( word, "ill" )
##Details
If the pattern (*patt*) does not appear in the string (*s*), **index** returns 0 (zero). For example, here is an **if** statement that checks to see if string *s* contains a blank:
The **index** is sometimes used to efficiently determine if a character is one of a given set of characters. For example, here is an **if** statement that checks to see if *ch*,* *which is declared using **var** *ch *: **string** (1), is a digit:
If a string contains more that one occurrence of the pattern, the leftmost location is returned. For example, **index** ("pingpong", "ng") returns 3.
If *patt* is the null string, the result is 1.
        if index ( s, " " ) not= 0 then         if index ( "0123456789", ch) not= 0 then 
