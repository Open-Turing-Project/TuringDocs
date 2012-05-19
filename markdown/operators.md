# Operators
## Mathematical Operators

OperatorOperationResult Type  
Prefix + Identity As Operands  
Prefix  - Negative As Operands  
+ Addition As Operands  
- Subtraction As Operands  
* Multiplication As Operands  
/ Division As Operands  
**div** Integer Division **int**  
**mod** Modulo **int**  
**rem** Remainder **int**  
** Exponentiation As Operands  
< Less Than **boolean**  
> Greater Than **boolean**  
= Equals **boolean**  
<= Less Than or Equal **boolean**  
>= Greater Than or Equal **boolean**  
**not**= Not Equal **boolean**  
## Boolean Operators

OperatorOperationResult Type  
Prefix not Negation **boolean**  
**and** And **boolean**  
**or** Or **boolean**  
**xor** Exclusive Or **boolean**  
=> Implication **boolean**  
## Set Operators

OperatorOperationResult Type  
+ Union **set**  
- Set Subtraction **set**  
* Intersection **set**  
= Equality **boolean**  
**not**= Inequality **boolean**  
<= Subset **boolean**  
< Strict (Proper) Subset **boolean**  
>= Superset **boolean**  
> Strict (Proper) Superset **boolean**  
## Operators on Members and Sets

OperatorOperationResult Type  
**in** Member of Set **boolean**  
**not in** Not Member of Set **boolean**  
**xor** Exclusive Or **set**  
## Bit Manipulation Operators

OperatorOperationResult Type  
**shl** Shift left **nat**  
**shr** Shift right **nat**  
**and** Bit-wise And **nat**  
**or** Bit-wise Or **nat**  
**xor** Bit-wise Exclusive Or **nat**  
## Pointer Operators

OperatorOperationResult Type  
^ Follow pointer Target type  
## Type Cheats

OperatorOperationResult Type  
# Type cheat **nat**  
## Operator Short Forms
These can be used in place of the above notation.  
**not**   ~  
**not**=   ~=  
**not in**   ~**in and**   &  
**or**   |   

## Operator Precedence
Highest precedence operators first.- **, ^, #
- prefix + and -
- * , / , **div** , **mod** , **rem** , **shl** , **shr**
- + , -, **xor**
- < , > , = , <= , >= , **not**= , **in** , **not in**
- **not**
- **and**
- **or**
- =>
