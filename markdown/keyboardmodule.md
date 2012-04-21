
#Keyboard

##Description
This unit contains all the constants representing both the characters and their ordinal values for all possible keystrokes that can be read by Turing.
Constants beginning with KEY_ are **char** values. These are the values returned by **getch** and used as an index into the** Input.KeyDown** array. The constants that the constants KEY_KEYPAD_5, KEY_SHIFT, KEY_CTRL and KEY_ALT can only be used in conjunction with **Input.KeyDown**. The **getch** and **getchar** subprograms do not return these values. All other constants with with SHIFT, CTRL and ALT as part of the name cannot be checked for in the **Input.KeyDown **array. 
Constants beginning with ORD_  are **int** values and represent the ordinal values (values returned by the **ord** function) for all the possible keystrokes.
Here is a list of most of the constants
KEY_F1 .. KEY_F12  KEY_CTRL_A .. KEY_CTRL_ZKEY_SHIFT_F1 .. KEY_SHIFT_F12 KEY_ALT_A .. KEY_ALT_ZKEY_CTRL_F1 .. KEY_CTRL_F12 KEY_ALT_1 .. KEY_ALT_0
KEY_ALT_F1 .. KEY_ALT_F12
KEY_HOME KEY_CTRL_HOMEKEY_UP_ARROW KEY_CTRL_UP_ARROWKEY_PGUP KEY_CTRL_PGUPKEY_LEFT_ARROW KEY_CTRL_LEFT_ARROWKEY_RIGHT_ARROW KEY_CTRL_RIGHT_ARROWKEY_END KEY_CTRL_ENDKEY_DOWN_ARROW KEY_CTRL_DOWN_ARROWKEY_PGDN KEY_CTRL_PGDNKEY_INSERT KEY_CTRL_INSERTKEY_DELETE KEY_CTRL_DELETEKEY_BACKSPACE KEY_KEYPAD_5 *KEY_TAB KEY_SHIFT *KEY_ENTER KEY_CTRL *KEY_ESC KEY_ALT *KEY_CTRL_OPEN_BRACKET KEY_CTRL_BACKSLASHKEY_CTRL_CLOSE_BRACKET KEY_CTRL_CARETKEY_CTRL_UNDERSCORE KEY_CTRL_BACKSPACEKEY_ALT_MINUS KEY_ALT_EQUALSKEY_BACK_TAB KEY_SHIFT_TAB

Above constants with ORD_ instead of  KEY_ 
ORD_A .. ORD_Z  ORD_0 .. ORD_9ORD_LOWER_A .. ORD_LOWER_Z  ORD_SPACE ORD_EXCALAMATION_MARKORD_QUOTATION_MARK ORD_HAS_MARKORD_DOLLAR_SIGN ORD_PERCENT_SIGNORD_AMPERSAND ORD_SINGLE_QUOTEORD_OPEN_PARENTHESIS ORD_CLOSE_PARENTHESISORD_ASTERISK ORD_PLUSORD_COMMA ORD_MINUSORD_PERIOD ORD_DOTORD_SLASH ORD_COLONORD_SEMICOLON ORD_LESS_THANORD_EQUALS ORD_GREATER_THANORD_QUESTION_MARK ORD_AT_SIGNORD_OPEN_BRACKET ORD_BACKSLASHORD_CLOSE_BRACKET ORD_CARETORD_UNDERSCORE ORD_APOSTROPHEORD_OPEN_BRACE ORD_BARORD_CLOSE_BRACE ORD_TILDE

Characters marked with an asterisk (*) are keys that can only be detected using** Input.KeyDown**.

All constants in the Keyboard module are exported unqualified. (This means you can use the constants directly without having to use the qualifier "**Keyboard.**".)

##See also
**[getch.html](getch)**, **[getchar.html](getchar)**, and **[input_keydown.html](Input.KeyDown)**.
