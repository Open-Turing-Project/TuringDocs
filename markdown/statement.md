
# statement

## Syntax
A _statement_ is one of:   
-  _assignmentStatement_   _% variableReference := expn_   
-  _openStatement_   _% **open** &#133;_   
-  _closeStatement_   _% **close** &#133;_   
-  _putStatement_   _% **put** &#133;_   
-  _getStatement_   _% **get** &#133;_   
-  _readStatement_   _% **read** &#133;_   
-  _writeStatement_   _% **write** &#133;_   
-  _seekStatement_   _% **seek** &#133;_   
-  _tellStatement_   _% **tell** &#133;_   
-  _forStatement_   _% **for** &#133; **end for**_   
-  _loopStatement_   _% **loop** &#133; **end loop**_   
-  **exit** [ **when** _trueFalseExpn_ ]   
-  _ifStatement_   _% **if** &#133; **end if**_   
-  _caseStatement_   _% **case** &#133; **end case**_   
-  **assert** _trueFalseExpn_   
-  **begin**       _statementsAndDeclarations_     **end**   
-  _procedureCall_   _% procedureId [(parameters)]_   
-  **return**   
-  **result** _expn_   
-  **new** [ _collectionId_ , ] _pointerVariableReference_   
-  **free** [ _collectionId_ , ] _pointerVariableReference_   
-  **tag** _unionVariableReference_ , _expn_   
-  _forkStatement_   _% **fork** &#133;_   
-  **signal** _variableReference_   
-  **wait** _variableReference_ [ , _expn_ ]   
-  **pause** _expn_   (aa) **quit** [ _guiltyParty_ ] [ : _quitReason_ ]   (bb) **unchecked**   (cc) **checked**

## Description
A _statement_ (or _command_) causes a particular action, for example, the _putStatement_:

outputs _Hello_. See the descriptions of the individual statements for explanations of their actions. Each statement can optionally by followed by a semicolon (;).

        put "Hello"
## Example


        width := 24         % Assignment statement
        put "Hello world"   % Put statement
        exit when i = 100       % Exit statement
        assert width < 320  % Assert statement
## Details
You can use a **result** statement only in a function. You can use a **return** statement only to terminate a procedure or the main program (but not to terminate the initialization of a module). See also **result** and **return**.

There are a number of predefined procedures, such as _drawline_, which are not listed as statements above. These are considered  procedure calls, which is one form of statement.

