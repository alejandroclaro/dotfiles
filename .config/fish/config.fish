set -x PATH $HOME/bin $HOME/.cargo/bin $PATH /opt/android/sdk/platform-tools /opt/android/sdk/tools
set -x LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/local/lib/gtk-3.0/modules
set -x ANDROID_HOME /opt/android/sdk/
set -x TERM xterm-256color
set -x TERMINAL xterm
set -x VISUAL vim
set -x EDITOR $VISUAL
set -x HISTSIZE 32768
set -x HISTFILESIZE $HISTSIZE
set -x HISTCONTROL ignoreboth

function ...
  cd ../..
end

function ....
  cd ../../..
end

function dl
  cd ~/Downloads
end

function dt
  cd ~/Desktop
end

function sl
  ls $argv
end

function la
  ls -A $argv
end

function c
  clear $argv
end

function q
  exit $argv
end

function h
  history $argv
end

function md
  mkdir -p $argv
end

function rd
  rmdir $argv
end

eval (thefuck --alias | tr '\n' ';')

set -Ux FZF_DEFAULT_OPTS "--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4"
source /usr/share/fish/vendor_functions.d/fzf_key_bindings.fish

