
##if

##Syntax
A conditional compilation **#if** has the form:


**#if** _expn_ **then**
_&#133; any source text &#133;_
{ **#elsif** _expn_ **then**
_&#133; any source text &#133;_ }
[ **#else**
_&#133; any source text &#133;_ ]
**#end** **if**



##Description
An #**if** construct supports compile time selection of sections of source text to make up a program (or unit of a program), in other words _conditional compilation_. Any arbitrary source text (characters) can be selected.

Each of the selecting expressions (_expns_) have the form of a boolean expression, with the use of the operators **and**, **or** and **not** (but not =>) and parentheses. The short forms & and ~ are supported. The operands of the expressions must be _preprocessor flags_, which are set by a system- dependent mechanism not described here. A flag is considered to be **true** if it is explicitly set. If it is not explicitly set, it is considered false.

Unlike other parts of the language, the **#if**, **#elsif**, **#else** and **#end** **if** constructs are not free format. Specifically, they must be placed by themselves on a single line.


##Example
A pair of declarations is chosen if both _stats_ and _debug_ are set, otherwise the **put** statement is selected. The selected part becomes part of the program and the other parts are ignored.

        #if stats and debug then
            var count : array 1 .. 5 of real
            var message : string
        #else
            put "Debugging message"
        #end if
