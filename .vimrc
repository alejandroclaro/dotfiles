" Theme configuration
" Nerd HACK font shall be installed and configured in the terminal emulator.
" https://github.com/ryanoasis/nerd-fonts/releases/
colorscheme wombat256mod

" set guifont=Hack\ Regular\ Nerd\ Font\ Complete\ Mono
set guifont=DroidSansMono\ Nerd\ Font\ 11

" Basic configuration
syntax on
filetype off
filetype plugin indent on

set shell=/bin/bash
set term=screen-256color
set encoding=utf-8
set t_Co=256
set nocompatible
set hidden
set textwidth=0 wrapmargin=0
set formatoptions-=t
set numberwidth=3
set ruler
set hlsearch
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set wildmenu
set nowrap
set nrformats=
set rnu
set laststatus=2
set pastetoggle=<F2>

" Vundle plugin manager configuration
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'alejandroclaro/vim-ai-assistant'
Plugin 'airblade/vim-gitgutter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'delimitMate.vim'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'easymotion/vim-easymotion'
Plugin 'fatih/vim-go'
Plugin 'rhysd/vim-grammarous'
Plugin 'godlygeek/tabular'
Plugin 'haya14busa/incsearch.vim'
Plugin 'JuliaLang/julia-vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'liuchengxu/vim-which-key'
Plugin 'luochen1990/rainbow'
Plugin 'mbbill/undotree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'powerline/powerline-fonts'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'sheerun/vim-polyglot'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'VundleVim/Vundle.vim'

Plugin 'ryanoasis/vim-devicons'
call vundle#end()

" Leader key
let mapleader = "\<Space>"
let maplocalleader = '\'
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :WhichKey '\'<CR>

" Quick ESC
inoremap jk <ESC>
inoremap kj <ESC>

" Disable arrows
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

" Fix yank and delete
nnoremap Y y$
nnoremap D d$

" Quick macros
nnoremap Q @q
vnoremap Q :norm @q<CR>

" Quick save
nnoremap <leader>s :w<cr>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

for s:i in range(1, 4)
  execute 'nnoremap <Leader>' . s:i . ' :' . s:i . 'wincmd w<CR>'
endfor

" Easy buffer navigation
nmap <leader>E :enew<CR>
nnoremap <leader>bd :Bclose<CR>
nnoremap <leader>ls :ls<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader><Tab> :FSHere<CR>

nnoremap <C-@> gf

" Clipboard keymaps
nnoremap <Leader>y "+y
vnoremap <Leader>y "+ygv
nnoremap <Leader>Y "+Y
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
inoremap <C-v> <ESC>"+pa
"
" Easy move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Improve searching
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Git gutter configuration
let g:gitgutter_enabled = 1
let g:gitgutter_eager = 0
let g:gitgutter_max_signs = 1000

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=bg
highlight SignColumn ctermbg=bg

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction

set statusline+=%{GitStatus()}

" Undotree Setting
let g:undotree_ShortIndicators = 30

map <leader>u :UndotreeToggle<CR>

" Nerd tree configuration
let NERDTreeHighlightCursorline = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2

noremap <F3> :NERDTreeFind<CR>

" Nerd commenter configuration
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" FZF configuration
let g:fzf_layout = { 'down': '40%' }

noremap <silent> <C-t> :FZF<CR>
noremap <silent> <leader>o :GitFiles<CR>
noremap <silent> <leader>O :Files<CR>
noremap <silent> <leader>b :Buffers<CR>

" Airline plugin configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Minimap configuration
au VimEnter * Minimap

" rainbow parentheses configuration
let g:rainbow_active = 1

" Indent guides configuration
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 2

" Better whitespace configuration
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1

" YCM plugin configuration
nmap <F4> :YcmDiags<CR>
nnoremap <leader>gh :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_max_diagnostics_to_display = 30
let g:ycm_show_diagnostics_ui = 1
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_auto_trigger = 1
let g:ycm_clangd_args=['--header-insertion=never']
set path+=/usr/include/c++/9

" CtrlP configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
\ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Easy motion configuration
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 1
let g:EasyMotion_use_smartsign_us = 1

nmap <leader>f <Plug>(easymotion-f)
xmap <leader>f <Plug>(easymotion-f)
nmap <leader>F <Plug>(easymotion-F)
xmap <leader>F <Plug>(easymotion-F)
nmap <leader>t <Plug>(easymotion-t)
xmap <leader>t <Plug>(easymotion-t)
nmap <leader>T <Plug>(easymotion-T)
xmap <leader>T <Plug>(easymotion-T)

" Grammarous configuration
let g:grammarous#jar_url = 'https://www.languagetool.org/download/LanguageTool-5.9.zip'
let g:grammarous#default_comments_only_filetypes = { '*' : 1, 'help' : 0, 'markdown' : 0, }

" GDB
let g:termdebug_popup = 0
let g:termdebug_wide = 163

packadd! termdebug

" Clang format
if has('python')
  map <C-f> :pyf /usr/share/clang/clang-format-15/clang-format.py<cr>
  imap <C-f> <c-o>:pyf /usr/share/clang/clang-format-15/clang-format.py<cr>
elseif has('python3')
  map <C-f> :py3f /usr/share/clang/clang-format-15/clang-format.py<cr>
  imap <C-f> <c-o>:py3f /usr/share/clang/clang-format-15/clang-format.py<cr>
endif

" Line size limit indicator
if (exists('+colorcolumn'))
  set colorcolumn=120
  highlight ColorColumn ctermbg=236
endif

" fix quicklist window position
augroup DragQuickfixWindowDown
    autocmd!
    autocmd FileType qf wincmd J
augroup end

" Show relative or absolute line number
function ToggleNumbersOn()
  set rnu!
  set nu
endfunction

function ToggleRelativeOn()
  set nu!
  set rnu
endfunction

au FocusLost * call ToggleNumbersOn()
au FocusGained * call ToggleRelativeOn()
au InsertEnter * call ToggleNumbersOn()
au InsertLeave * call ToggleRelativeOn()

