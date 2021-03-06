
# Keyboard

## Description
This unit contains all the constants representing both the characters and their ordinal values for all possible keystrokes that can be read by Turing.

Constants beginning with &#147;KEY_&#148; are **char** values. These are the values returned by **getch** and used as an index into the **Input.KeyDown** array. The constants that the constants KEY_KEYPAD_5, KEY_SHIFT, KEY_CTRL and KEY_ALT can only be used in conjunction with **Input.KeyDown**. The **getch** and **getchar** subprograms do not return these values. All other constants with with SHIFT, CTRL and ALT as part of the name cannot be checked for in the **Input.KeyDown** array. 

Constants beginning with &#147;ORD_&#148;  are **int** values and represent the ordinal values (values returned by the **ord** function) for all the possible keystrokes.

Here is a list of most of the constants


KEY_F1 .. KEY_F12    KEY_CTRL_A .. KEY_CTRL_Z  
KEY_SHIFT_F1 .. KEY_SHIFT_F12   KEY_ALT_A .. KEY_ALT_Z  
KEY_CTRL_F1 .. KEY_CTRL_F12   KEY_ALT_1 .. KEY_ALT_0  


KEY_ALT_F1 .. KEY_ALT_F12



KEY_HOME   KEY_CTRL_HOME KEY_UP_ARROW   KEY_CTRL_UP_ARROW  
KEY_PGUP   KEY_CTRL_PGUP  
KEY_LEFT_ARROW   KEY_CTRL_LEFT_ARROW  
KEY_RIGHT_ARROW   KEY_CTRL_RIGHT_ARROW  
KEY_END   KEY_CTRL_END  
KEY_DOWN_ARROW   KEY_CTRL_DOWN_ARROW  
KEY_PGDN   KEY_CTRL_PGDN  
KEY_INSERT   KEY_CTRL_INSERT  
KEY_DELETE   KEY_CTRL_DELETE  

KEY_BACKSPACE   KEY_KEYPAD_5 * KEY_TAB   KEY_SHIFT *  
KEY_ENTER   KEY_CTRL *  
KEY_ESC   KEY_ALT *  

KEY_CTRL_OPEN_BRACKET   KEY_CTRL_BACKSLASH KEY_CTRL_CLOSE_BRACKET   KEY_CTRL_CARET  
KEY_CTRL_UNDERSCORE   KEY_CTRL_BACKSPACE  
KEY_ALT_MINUS   KEY_ALT_EQUALS  
KEY_BACK_TAB   KEY_SHIFT_TAB  




Above constants with &#147;ORD_&#148; instead of  &#147;KEY_&#148; 



ORD_A .. ORD_Z    ORD_0 .. ORD_9 ORD_LOWER_A .. ORD_LOWER_Z     

ORD_SPACE   ORD_EXCALAMATION_MARK ORD_QUOTATION_MARK   ORD_HAS_MARK  
ORD_DOLLAR_SIGN   ORD_PERCENT_SIGN  
ORD_AMPERSAND   ORD_SINGLE_QUOTE  
ORD_OPEN_PARENTHESIS   ORD_CLOSE_PARENTHESIS  
ORD_ASTERISK   ORD_PLUS  
ORD_COMMA   ORD_MINUS  
ORD_PERIOD   ORD_DOT  
ORD_SLASH   ORD_COLON  
ORD_SEMICOLON   ORD_LESS_THAN  
ORD_EQUALS   ORD_GREATER_THAN  
ORD_QUESTION_MARK   ORD_AT_SIGN  
ORD_OPEN_BRACKET   ORD_BACKSLASH  
ORD_CLOSE_BRACKET   ORD_CARET  
ORD_UNDERSCORE   ORD_APOSTROPHE  
ORD_OPEN_BRACE   ORD_BAR  
ORD_CLOSE_BRACE   ORD_TILDE  




Characters marked with an asterisk (*) are keys that can only be detected using **Input.KeyDown**.



All constants in the Keyboard module are exported unqualified. (This means you can use the constants directly without having to use the qualifier "**Keyboard.**".)


## See also
**[getch](getch.html)**, **[getchar](getchar.html)**, and **[Input.KeyDown](input_keydown.html)**.

