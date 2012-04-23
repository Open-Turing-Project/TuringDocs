
# typeSpec

## Syntax
A _typeSpec_ (type specification) is one of:   (a) **int**   (b) **real**   (c) **boolean**   (d) _stringType_   _% Example: **string** ( 20 )_   (e) _subrangeType_   _% Example: 1_ .. _150_   (f) _enumeratedType_   _% Example: **enum** ( red_, _green_, _blue )_   (g) _arrayType_   _% Example: **array** 1_ .. _150 **of** **real**_   (h) _setType_   _% Example: **set** **of** 1_ .. _10_   (i) _recordType_   _% Example: **record** &#133; **end** **record**_   (j) _unionType_   _% Example: **union** &#133; **end** **union**_   (k) _pointerType_   _% Example: **pointer** **to** collectionVar_   (l) _namedType_   _% Example: colorRange_   (m) **nat**   _% natural number_   (n) **int**_n_   _% n-byte integer (n=1_, _2_, _4)_   (o) **nat**_n_   _% n-byte natural (n= 1_, _2_, _4)_   (p) **real**_n_   _% n-byte real (n=4_, _8)_   (q) **char**   _% single character_   (r) **char**(_n_)   _% n characters_   (s) _subprogramType_

## Description
A type specification determines the allowed values for a variable or constant. For example, if variable _x_ is an integer (its _typeSpec_ is **int**), the possible values for _x_ are numbers such as -15, 0, 3 and 348207. If _x_ is a real number (its _typeSpec_ is **real**), then its possible values include 7.8, -35.0, and 15e12. If _x_ is a **boolean**, its possible values are **true** and **false**. If _x_ is a **string**, its possible values include _Hello_ and _Good-bye_.


## Example


        var numberOfSides : int
        var x, y : real
        type range : 0 .. 150   % The typeSpec here is 0 .. 150
        type entry :            % Here is a record typeSpec
            record
                name : string ( 25 )
                age : range
            end record
## See also
**[int](int.html)**, **[real](real.html)**, **[boolean](boolean.html)**, **[string](string1.html)**, _[subrangeType](subrangetype.html)_, **[enum](enum.html)**, **[array](array.html)**, **[set](set.html)**, **[record](record.html)**, **[union](union.html)**, **[pointer](pointer.html)**, [named](named.html), **[nat](nat.html)**, **[int](int.html)_n_**, **[nat](nat.html)_n_**, **[real](real.html)_n_**, **[char](char.html)**, and **[char](char.html)**(_n_) types.

