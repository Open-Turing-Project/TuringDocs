
#Config

##Description
This unit contains the predefined subprograms that deal with getting configuration information about the machine and environment on which the program is being run. It exists in order to allow users to obtain information about the system that may only be available at run time.

All routines in the Config module are exported qualified (and thus must be prefaced with "**Config.**").


##Entry Points

[config_display.html](**Display**)   Returns information about the display currently attached.
[config_lang.html](**Lang**)   Returns information about the language environment that the program is currently running within.
[config_machine.html](**Machine**)   Returns information about the hardware on which the program is running.
