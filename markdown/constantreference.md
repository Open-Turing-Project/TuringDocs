
#constantReference

##Syntax
A _constantReference_ is:

_constantId_ { _componentSelector_ }




##Description
In a Turing program, a constant is declared and given a name (_constantId_) and then used. Each use is called a _constant reference_.
If the constant is an array, record or union, its parts (_components_) can be selected using subscripts and field names (using _componentSelectors_). The form of a _componentSelector_ is one of:




Form (a) is used for subscripting (indexing) arrays. The number of array subscripts must be the same as in the array's declaration. Form (b) is used for selecting a field of a **record** or **union**. Component selectors are used in the same manner as variable references. See _variableReference_ for details. See also **const** declaration and _explicitConstant_.



##Example



        var radius : real
        const pi := 3.14159     % Constant declaration
        
        put "Area is: ", pi * radius **2
                            % pi is a constant reference.
