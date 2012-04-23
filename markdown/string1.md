
# string

## Syntax
A _stringType_ is:   **string** [ ( _maximumLength_ ) ]

## Description
Each variable whose type is a _stringType_ can contain a sequence (a string ) of characters. The length of this sequence must not exceed the _stringType'_s maximum length.


## Example


        var name : string
        name := "Nancy"
        var licenceNumber : string ( 6 )
        licenceNumber := "175AJN"
## Details
Strings can be assigned and they can be compared for both equality and for ordering. See also _string comparison_ and _assignment statement_.

Strings can be catenated (joined together) using the + operator and separated into substrings. See _catenation_ and _substring_. String functions are provided to find the length of a string, to find where one string appears inside another, and to make repeated copies of a string all joined together. See _length_, _index_, and _repeat_.

A string type written without a maximum length is limited to holding a maximum of 255 characters.

The _maximumLength_ of a string, if given as a part of the type, must be known at compile time, and must be at least 1 and at most 255. The maximum length of a string is given by _upper_, for example, _upper_(_licenceNumber_) is 6. See also _upper_.

In the declaration of a string that is a **var** formal parameter of a procedure or function, the _maximumLength_ can be written as an asterisk (*). Here, the maximum length is taken to be that of the corresponding actual parameter, as in:

The star can also be used when the parameter is an array of strings.

        procedure deblank (var s : string (*) ).
## See also
_explicitStringConstants_ for exact rules for writing string values such as "Nancy". See also **[char](char.html)**(_n_) and **[char](char.html)** types.

