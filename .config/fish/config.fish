set -x PATH $HOME/bin $PATH /opt/android/sdk/platform-tools /opt/android/sdk/tools
set -x LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/local/lib/gtk-3.0/modules
set -x ANDROID_HOME /opt/android/sdk/
set -x TERM xterm-256color
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

function localip
  ifconfig eth0 | grep 'inet addr' | awk '{print $2}' | sed s/addr://
end
