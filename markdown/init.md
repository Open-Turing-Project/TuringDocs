
#init

##Syntax
**init**



##Description
The **init** (initialization) keyword is used for two different purposes in Turing. The most common is for initializing arrays, records and unions. The less common is for recording parameter values in subprograms for later use in **post** conditions.



##Example



        var mensNames : array 1 .. 3 of string :=
            init ( "Tom", "Dick", "Harry" )
        put mensNames ( 2 )             % This outputs Dick
        var names : array 1 .. 2, 1 .. 3 of string :=
            init ( "Tom", "Dick", "Harry",
                 "Alice", "Barbara", "Cathy")
        put names ( 2, 1 )  % This outputs Alice
##Details
The order of initializing values for multi-dimensional arrays is based on varying the right subscripts (indexes) most rapidly. This is called *row major order*. Initialization of records and unions is analogous to initializing arrays. Values are listed in the order in which they appear in the type. See **array**, **record**, and **union** types.



##Example
This procedure is supposed to set integer variable *i* to an integer approximation of its square root. The **init** clause records the initial value of *i *as *j *so it can be used in the **post** condition to make sure that the approximation is sufficiently accurate. The name *j *can be used only in the post condition and nowhere else in the procedure.


        procedure intSqrt ( var i : int )
            pre i >= 0
            init j := i
            post abs ( i - sqrt ( j ) ) <= 1
             statements to approximate square root
        end intSqrt
##See also
**[pre.html](pre)** and **[post.html](post)** assertions and **[procedure.html](procedure)** and **[process.html](process)** declarations.


