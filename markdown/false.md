
#false

##Syntax
**false**


##Description
A **boolean** (**true**/**false**) variable can be either **true** or **false** (see **boolean** type).


##Example


        var found : boolean := false
        var word : int
        for i : 1 .. 10
            get word
            found := found or word = "gold"
        end for
        if found = true then
            put "Found 'gold' in the ten words"
        end if
##Details
The line **if** _found_=**true** **then** can be simplified to **if** _found_ **then** with no change to the meaning of the program.

