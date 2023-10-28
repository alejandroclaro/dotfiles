set -x NNN_OPTS 'cdrxUHD'
set -x NNN_FIFO (mktemp -u)

set -x NNN_USE_EDITOR 1
set -x NNN_OPENER mimeopen
set -x NNN_BMS 'd:~/Documents;D:~/Desktop/'
set -x NNN_ARCHIVE '\\.(7z|bz2|xz|gz|tar|tgz|zip)$'
set -x NNN_COLORS '4652'
set -x NNN_FCOLORS 'c1e2272e006033f7c6d6abc4'
set -x NNN_PLUG 'c:fzcd;d:diff;f:finder;i:imgview;j:autojump;m:mimelist;n:nmount;o:fzopen;p:preview-tui;s:suedit'
