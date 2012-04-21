
#string

##Syntax
A *stringComparison* is one of:
 (a)*stringExpn* = *stringExpn* (b)*stringExpn* **not=** *stringExpn* (c)*stringExpn* **>** *stringExpn* (d)*stringExpn* **<** *stringExpn* (e)*stringExpn* **>**= *stringExpn* (f)*stringExpn* **<**= *stringExpn*



##Description
Strings (*stringExpns*) can be compared for equality (= and **not=**) and for ordering (>, <, >= and <=).



##Example



        var name : string := "Nancy"
        var licenceNumber : string ( 6 )
        licenceNumber := "175AJN"
##Details
Two strings are considered to be equal (=) if they have the same length and are made up, character by character, of the same characters. If they differ,  they are considered to be unequal (**not=**).
Ordering among strings is essentially alphabetic order. String *S* is considered to come before string *T*, that is *S* **<** *T*, if the two are identical up to a certain position and after that position, either the next character of *S* comes before the next character of *T*, or else there are no more characters in *S* while *T* contains more characters.
*S *> *T* (*S* comes after *T *) means the same thing as *T *< *S*. *S *>= *T *means the same thing as *S *> *T ***or** *S *= *T*. *S *<= *T* means the same thing as *S *< *T ***or** *S*=*T*.
ASCII gives the ordering among individual characters. It specifies, among other things, that letter capital *L*  comes alphabetically before capital letter *M* and similarly for small (lower case) letters.
On IBM mainframe computers, the EBCDIC specification of characters may be used instead of ASCII.


