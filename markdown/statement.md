
#statement

##Syntax
A _statement_ is one of:


(a) _assignmentStatement_   _% variableReference := expn_
(b) _openStatement_   _% **open** &#133;_
(c) _closeStatement_   _% **close** &#133;_
(d) _putStatement_   _% **put** &#133;_
(e) _getStatement_   _% **get** &#133;_
(f) _readStatement_   _% **read** &#133;_
(g) _writeStatement_   _% **write** &#133;_
(h) _seekStatement_   _% **seek** &#133;_
(i) _tellStatement_   _% **tell** &#133;_
(j) _forStatement_   _% **for** &#133; **end for**_
(k) _loopStatement_   _% **loop** &#133; **end loop**_
(l) **exit** [ **when** _trueFalseExpn_ ]
(m) _ifStatement_   _% **if** &#133; **end if**_
(n) _caseStatement_   _% **case** &#133; **end case**_
(o) **assert** _trueFalseExpn_
(p) **begin**
_statementsAndDeclarations_
**end**
(q) _procedureCall_   _% procedureId [(parameters)]_
(r) **return**
(s) **result** _expn_
(t) **new** [ _collectionId_ , ] _pointerVariableReference_
(u) **free** [ _collectionId_ , ] _pointerVariableReference_
(v) **tag** _unionVariableReference_ , _expn_
(w) _forkStatement_   _% **fork** &#133;_
(x) **signal** _variableReference_
(y) **wait** _variableReference_ [ , _expn_ ]
(z) **pause** _expn_
(aa) **quit** [ _guiltyParty_ ] [ : _quitReason_ ]
(bb) **unchecked**
(cc) **checked**



##Description
A _statement_ (or _command_) causes a particular action, for example, the _putStatement_:

outputs _Hello_. See the descriptions of the individual statements for explanations of their actions. Each statement can optionally by followed by a semicolon (;).

        put "Hello"
##Example


        width := 24         % Assignment statement
        put "Hello world"   % Put statement
        exit when i = 100       % Exit statement
        assert width < 320  % Assert statement
##Details
You can use a **result** statement only in a function. You can use a **return** statement only to terminate a procedure or the main program (but not to terminate the initialization of a module). See also **result** and **return**.

There are a number of predefined procedures, such as _drawline_, which are not listed as statements above. These are considered  procedure calls, which is one form of statement.

