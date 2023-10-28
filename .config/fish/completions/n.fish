#
# Fish completion definition for nnn.
#
# Author:
#   Arun Prakash Jana <engineerarun@gmail.com>
#

if test -n "$XDG_CONFIG_HOME"
    set sessions_dir $XDG_CONFIG_HOME/.config/n/sessions
else
    set sessions_dir $HOME/.config/n/sessions
end

complete -c n -s a    -d 'auto-create NNN_FIFO'
complete -c n -s A    -d 'disable dir auto-enter'
complete -c n -s b -r -d 'bookmark key to open' -x -a '(echo $NNN_BMS | awk -F: -v RS=\; \'{print $1"\t"$2}\')'
complete -c n -s B    -d 'use bsdtar for archives'
complete -c n -s c    -d 'cli-only opener'
complete -c n -s C    -d 'color by context'
complete -c n -s d    -d 'start in detail mode'
complete -c n -s D    -d 'dirs in context color'
complete -c n -s e    -d 'open text files in $VISUAL/$EDITOR/vi'
complete -c n -s E    -d 'use EDITOR for undetached edits'
complete -c n -s f    -d 'use readline history file'
complete -c n -s g    -d 'regex filters'
complete -c n -s H    -d 'show hidden files'
complete -c n -s i    -d 'show current file info'
complete -c n -s J    -d 'no auto-advance on selection'
complete -c n -s K    -d 'detect key collision and exit'
complete -c n -s l -r -d 'lines to move per scroll'
complete -c n -s n    -d 'start in type-to-nav mode'
complete -c n -s o    -d 'open files only on Enter'
complete -c n -s p -r -d 'copy selection to file' -a '-\tstdout'
complete -c n -s P -r -d 'plugin key to run' -x -a '(echo $NNN_PLUG | awk -F: -v RS=\; \'{print $1"\t"$2}\')'
complete -c n -s Q    -d 'disable quit confirmation'
complete -c n -s r    -d 'show cp, mv progress (Linux-only)'
complete -c n -s R    -d 'disable rollover at edges'
complete -c n -s s -r -d 'load session by name' -x -a '@\t"last session" (ls $sessions_dir)'
complete -c n -s S    -d 'persistent session'
complete -c n -s t -r -d 'timeout in seconds to lock'
complete -c n -s T -r -d 'a d e r s t v'
complete -c n -s u    -d 'use selection (no prompt)'
complete -c n -s U    -d 'show user and group'
complete -c n -s V    -d 'show program version and exit'
complete -c n -s x    -d 'notis, sel to system clipboard, xterm title'
complete -c n -s h    -d 'show program help'
