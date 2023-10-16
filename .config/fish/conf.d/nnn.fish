set -x NNN_FCOLORS 030304020000060801030500
set -x NNN_OPENER '$HOME/.config/nnn/plugins/nuke'
set -x NNN_FIFO (mktemp -u)

set -x NNN_BMS 'd:$HOME/Documents;D:$HOME/Desktop/'
set -x NNN_ARCHIVE '\\.(7z|bz2|xz|gz|tar|tgz|zip)$'
set -x NN_COLORS '1234'
set -x NNN_PLUG 'c:fzcd;d:diff;f:finder;i:imgview;j:autojump;m:mimelist;n:nmount;o:fzopen;p:preview-tui;s:suedit'
