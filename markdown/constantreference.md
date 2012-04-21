
#constantReference

##Syntax
A *constantReference* is:
 *constantId* { *componentSelector* }

##Description
In a Turing program, a constant is declared and given a name (*constantId*) and then used. Each use is called a *constant reference*.
If the constant is an array, record or union, its parts (*components*) can be selected using subscripts and field names (using *componentSelectors*). The form of a *componentSelector *is one of:
 (a) (*expn* {, *expn*} ) (b) . *fieldId*
Form (a) is used for subscripting (indexing) arrays. The number of array subscripts must be the same as in the array's declaration. Form (b) is used for selecting a field of a **record** or **union**. Component selectors are used in the same manner as variable references. See *variableReference* for details. See also **const** declaration and *explicitConstant*.

##Example

        var radius : real
        const pi := 3.14159     % Constant declaration
        
        put "Area is: ", pi * radius **2
                            % pi is a constant reference.
