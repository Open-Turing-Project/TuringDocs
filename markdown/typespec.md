
# typeSpec

## Syntax
A _typeSpec_ (type specification) is one of:   

- **int**   
- **real**   
- **boolean**   
- _stringType_   _% Example: **string** ( 20 )_   
- _subrangeType_   _% Example: 1_ .. _150_   
- _enumeratedType_   _% Example: **enum** ( red_, _green_, _blue )_   
- _arrayType_   _% Example: **array** 1_ .. _150 **of** **real**_   
- _setType_   _% Example: **set** **of** 1_ .. _10_   
- _recordType_   _% Example: **record** … **end** **record**_   
- _unionType_   _% Example: **union** … **end** **union**_   
- _pointerType_   _% Example: **pointer** **to** collectionVar_   
- _namedType_   _% Example: colorRange_   
- **nat**   _% natural number_   
- **int**_n_   _% n-byte integer (n=1_, _2_, _4)_   
- **nat**_n_   _% n-byte natural (n= 1_, _2_, _4)_   
- **real**_n_   _% n-byte real (n=4_, _8)_   
- **char**   _% single character_   
- **char**(_n_)   _% n characters_   
- _subprogramType_

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

                        
