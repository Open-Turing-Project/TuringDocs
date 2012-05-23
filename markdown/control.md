# Control Constructs

## FOR
    
**for** [ **decreasing** ] _variable_ : _startValue_ .. _endValue_  
... _statements_ ...  
**exit when**  _expn_  
... _statements_ ...  
**end for**  

   
## LOOP
    
**loop**  
... _statements_ ...  
**exit when**  _expn_  
... _statements_ ...  
**end loop**  

   
## IF
    
**if** _condition_ **then**  
... _statements_ ...  
{ **elsif** _condition_ **then**  
... _statements_ ... }  
[ **else**  
... _statements_ ... ]  
**end if**  

   
## CASE
    
**case** _expn_ **of**  
... _statements_ ...  
{ **label** _expn_ {, _expn_  
... _statements_ ... }  
[ **label :**  
... _statements_ ... ]  
**end case**  

   


Any number of **exit** and **exit when** statements can appear at any place inside **for** .. **end for** constructs and **loop** .. **end loop** constructs.
