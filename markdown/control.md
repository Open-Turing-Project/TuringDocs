#Control Constructs

##FOR


... _statements_ ...
**exit when**  _expn_
... _statements_ ...



##LOOP


... _statements_ ...
**exit when**  _expn_
... _statements_ ...



##IF


... _statements_ ...
{ **elsif** _condition_ **then**
... _statements_ ... }
[ **else**
... _statements_ ... ]



##CASE


... _statements_ ...
{ **label** _expn_ {, _expn_
... _statements_ ... }
[ **label :**
... _statements_ ... ]




Any number of **exit** and **exit when** statements can appear at any place inside **for** .. **end for** constructs and **loop** .. **end loop** constructs.
