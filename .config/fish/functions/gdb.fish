function gdb -d "Wrapper around gdb to start with gdb-dasboard enabled"
  if set -q TMUX
    set -l id (tmux split-pane -hPF "#D" "tail -f /dev/null")
    tmux last-pane
    set -l tty (tmux display-message -p -t "$id" '#{pane_tty}')
    command gdb -q -ex "dashboard -enabled on" -ex "dashboard -output $tty" $argv
    tmux kill-pane -t $id
  else
    command gdb $argv
  end
end
