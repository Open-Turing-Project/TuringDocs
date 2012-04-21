
#token

##Description
A *token* is essentially a word, a number or a special symbol such as :=. In a Turing program there are four kinds of tokens: keywords such as **get**, identifiers such as *incomeTax*, operators and special symbols, such as **+** and :=, and explicit constants, such as 1.5 and "Hello". Some keywords, such as **index**, are reserved and cannot be used in programs to name variables, procedures, etc.
A **get** statement, such as
uses *token-oriented* input. This means that white space (blanks, tabs, etc.) is skipped before reading the input item and after the item (up to the beginning of the next line). See the **get** statement for details.


        get incomeTax
##Example
In this example, the tokens are **var**,* x*, :, **real**, *x*, := and 9.84.


        var x : real
        x := 9.84
