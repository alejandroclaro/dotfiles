export PATH="$HOME/bin:/usr/lib/ccache:$(yarn global bin):$PATH";
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib;
export FZF_DEFAULT_OPTS='--height 40% --border'
export TERMINAL=xterm

for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done

unset file;

shopt -s nocaseglob;
shopt -s extglob;
shopt -s histappend;
shopt -s cdspell;

eval $(thefuck --alias)
