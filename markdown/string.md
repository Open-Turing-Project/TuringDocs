
#string

##Syntax
A _stringComparison_ is one of:

(a)_stringExpn_ = _stringExpn_
(b)_stringExpn_ **not=** _stringExpn_
(c)_stringExpn_ **>** _stringExpn_
(d)_stringExpn_ **<** _stringExpn_
(e)_stringExpn_ **>**= _stringExpn_
(f)_stringExpn_ **<**= _stringExpn_




##Description
Strings (_stringExpns_) can be compared for equality (= and **not=**) and for ordering (>, <, >= and <=).



##Example



        var name : string := "Nancy"
        var licenceNumber : string ( 6 )
        licenceNumber := "175AJN"
##Details
Two strings are considered to be equal (=) if they have the same length and are made up, character by character, of the same characters. If they differ,  they are considered to be unequal (**not=**).
Ordering among strings is essentially alphabetic order. String _S_ is considered to come before string _T_, that is _S_ **<** _T_, if the two are identical up to a certain position and after that position, either the next character of _S_ comes before the next character of _T_, or else there are no more characters in _S_ while _T_ contains more characters.
_S _> _T_ (_S_ comes after _T _) means the same thing as _T _< _S_. _S _>= _T _means the same thing as _S _> _T _**or** _S _= _T_. _S _<= _T_ means the same thing as _S _< _T _**or** _S_=_T_.
ASCII gives the ordering among individual characters. It specifies, among other things, that letter capital _L_  comes alphabetically before capital letter _M_ and similarly for small (lower case) letters.
On IBM mainframe computers, the EBCDIC specification of characters may be used instead of ASCII.


