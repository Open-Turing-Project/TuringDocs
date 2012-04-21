
#typeSpec

##Syntax
A *typeSpec* (type specification) is one of:
 (a)**int** (b)**real** (c)**boolean** (d)*stringType* *% Example: **string** ( 20 )* (e)*subrangeType* *% Example: 1 *..* 150* (f)*enumeratedType* *% Example: **enum** ( red*,* green*,* blue )* (g)*arrayType* *% Example: **array** 1 *..* 150 **of** **real*** (h)*setType* *% Example: **set** **of** 1 *..* 10* (i)*recordType* *% Example: **record**  **end** **record*** (j)*unionType* *% Example: **union**  **end** **union*** (k)*pointerType* *% Example: **pointer** **to** collectionVar* (l)*namedType* *% Example: colorRange* (m)**nat** *% natural number* (n)**int***n* *% n-byte integer (n=1*,* 2*,* 4)* (o)**nat***n* *% n-byte natural (n= 1*,* 2*,* 4)* (p)**real***n* *% n-byte real (n=4*,* 8)* (q)**char** *% single character* (r)**char**(*n*) *% n characters* (s)*subprogramType*



##Description
A type specification determines the allowed values for a variable or constant. For example, if variable *x* is an integer (its *typeSpec* is **int**), the possible values for *x* are numbers such as -15, 0, 3 and 348207. If *x* is a real number (its *typeSpec* is **real**), then its possible values include 7.8, -35.0, and 15e12. If *x *is a **boolean**, its possible values are **true** and **false**. If *x *is a **string**, its possible values include *Hello* and *Good-bye*.



##Example



        var numberOfSides : int
        var x, y : real
        type range : 0 .. 150   % The typeSpec here is 0 .. 150
        type entry :            % Here is a record typeSpec
            record
                name : string ( 25 )
                age : range
            end record
##See also
**[int.html](int)**, **[real.html](real)**, **[boolean.html](boolean)**, **[string1.html](string)**, *[subrangetype.html](subrangeType)*, **[enum.html](enum)**, **[array.html](array)**, **[set.html](set)**, **[record.html](record)**, **[union.html](union)**, **[pointer.html](pointer)**, [named.html](named),** [nat.html](nat)**, **[int.html](int)*n***, **[nat.html](nat)*n***, **[real.html](real)*n***, **[char.html](char)**, and **[char.html](char)**(*n*) types.


