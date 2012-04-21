
#statement

##Syntax
A *statement* is one of:
 (a)*assignmentStatement* *% variableReference := expn* (b)*openStatement* *% **open** * (c)*closeStatement* *% **close** * (d)*putStatement* *% **put** * (e)*getStatement* *% **get** * (f)*readStatement* *% **read** * (g)*writeStatement* *% **write** * (h)*seekStatement* *% **seek** * (i)*tellStatement* *% **tell** * (j)*forStatement* *% **for**  **end for*** (k)*loopStatement* *% **loop**  **end loop*** (l)**exit** [ **when** *trueFalseExpn* ] (m)*ifStatement* *%** if** ** end if*** (n)*caseStatement* *% **case**  **end case*** (o)**assert** *trueFalseExpn* (p)**begin**   *statementsAndDeclarations*  **end** (q)*procedureCall* *% procedureId [(parameters)]* (r)**return** (s)**result** *expn* (t)**new** [ *collectionId* , ] *pointerVariableReference* (u)**free** [ *collectionId* , ] *pointerVariableReference* (v)**tag** *unionVariableReference* , *expn* (w)*forkStatement* *% **fork** * (x)**signal** *variableReference* (y)**wait** *variableReference* [ , *expn* ] (z)**pause** *expn* (aa)**quit** [ *guiltyParty* ] [ : *quitReason* ] (bb)**unchecked** (cc)**checked**

##Description
A *statement* (or *command*) causes a particular action, for example, the *putStatement*:
outputs *Hello*. See the descriptions of the individual statements for explanations of their actions. Each statement can optionally by followed by a semicolon (;).
        put "Hello"
##Example

        width := 24         % Assignment statement
        put "Hello world"   % Put statement
        exit when i = 100       % Exit statement
        assert width < 320  % Assert statement
##Details
You can use a **result** statement only in a function. You can use a **return** statement only to terminate a procedure or the main program (but not to terminate the initialization of a module). See also **result** and **return**.
There are a number of predefined procedures, such as *drawline*, which are not listed as statements above. These are considered  procedure calls, which is one form of statement.
