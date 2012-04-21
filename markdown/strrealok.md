
#strrealok

##Syntax
**strrealok** ( *s* : **string** ) : **boolean**

##Description
The **strrealok** function is used determine whether the **strreal** function can be used to convert the string to a real number without causing an error. If the string can be successfully converted, then **strrealok** returns **true**, otherwise it returns **false**.
String *s* should consist of a possibly null sequence of blanks, then an optional plus or minus sign and finally an explicit unsigned real or integer constant. If it does so, then **strrealok** will return **true**, otherwise it returns **false**.

##See also
**[strreal.html](strreal)** function that does the actual conversion.