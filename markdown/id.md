
#id

##Description
Variables, constants, types, procedures, etc. in Turing programs are given names such as *incomeTax*, *x*, and *height*. These names are called identifiers (*ids*).
An identifier must start with a letter (large or small) or an underscore ( _ ) and can contain up to 50 characters, each of which must be a letter, a digit (0 to 9) or an underscore ( _ ). Large and small letters are considered distinct, so that *A *and *a *are different names. This differs from Pascal  where large and small letters in names are equivalent.
Every character in a name is significant in distinguishing one name from another.
By convention, words that make up an identifier are capitalized (except the first one), as in *incomeTax* and *justInTime*.
An item in a Turing program cannot be given the same name as a keyword such as **get** or as a reserved word such as **index**. See Appendix A for a list of keywords and reserved words. As well, there are some identifiers that are used by the Turing error recovery procedures and are thus unavailable for use as identifiers. Specifically, they are: *endif*, *elseif*, *endloop* and *endfor*.
