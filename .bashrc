for file in ~/.{path,bash_prompt,bash_git,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done

unset file;

shopt -s nocaseglob;
shopt -s extglob;
shopt -s histappend;
shopt -s cdspell;

eval $(thefuck --alias)

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="/home/aclaro/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

. "$HOME/.cargo/env"
