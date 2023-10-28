function less -d "Use bat instead of less unless it's a Markdown file, then use mdless"
 set -l exts md markdown

 if contains (get_ext $argv) $exts
  mdless $argv
 else
  bat $argv
 end
end

