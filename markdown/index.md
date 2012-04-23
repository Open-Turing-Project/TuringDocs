
#index

##Syntax
**index** (_s_ , _patt_ : **string** ) : **int**


##Description
The **index** function is used to find the position of _patt_ within string _s_. For example, **index** ( "chair", "air" ) is 3.


##Example
This program outputs 2, because "ill" is a substring of "willing", starting at the second character of "willing".

        var word : string := "willing"
        put index ( word, "ill" )
##Details
If the pattern (_patt_) does not appear in the string (_s_), **index** returns 0 (zero). For example, here is an **if** statement that checks to see if string _s_ contains a blank:

The **index** is sometimes used to efficiently determine if a character is one of a given set of characters. For example, here is an **if** statement that checks to see if _ch_, which is declared using **var** _ch_ : **string** (1), is a digit:

If a string contains more that one occurrence of the pattern, the leftmost location is returned. For example, **index** ("pingpong", "ng") returns 3.

If _patt_ is the null string, the result is 1.

        if index ( s, " " ) not= 0 then         if index ( "0123456789", ch) not= 0 then 
