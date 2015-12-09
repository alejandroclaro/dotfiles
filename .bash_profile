export PATH="$HOME/bin:$PATH";

for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done

unset file;

shopt -s nocaseglob;
shopt -s extglob;
shopt -s histappend;
shopt -s cdspell;

eval $(thefuck --alias)
