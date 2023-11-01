" Theme configuration
" Nerd HACK font shall be installed and configured in the terminal emulator.
" https://github.com/ryanoasis/nerd-fonts/releases/

" Basic configuration
syntax on
filetype off
filetype plugin indent on

set shell=/bin/bash
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
set noro
set laststatus=2
set pastetoggle=<F2>

if $TERM =~# '\v(tmux-256color)'
  set term=xterm-256color
endif

" Leader key
let mapleader = "\<Space>"
let maplocalleader = '\'

" Keymaps
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :WhichKey '\'<CR>

inoremap jk <ESC>
inoremap kj <ESC>

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

for s:i in range(1, 4)
  execute 'nnoremap <Leader>' . s:i . ' :' . s:i . 'wincmd w<CR>'
endfor

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap <leader>E :enew<CR>
nnoremap <leader>bd :Bclose<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader><Tab> :FSHere<CR>

nnoremap <C-@> gf
nnoremap <C-#> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gh :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap Q @q
vnoremap Q :norm @q<CR>

nnoremap Y y$
nnoremap D d$
nnoremap <Leader>y "+y
vnoremap <Leader>y "+ygv
nnoremap <Leader>Y "+Y
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
inoremap <C-v> <ESC>"+pa

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nnoremap <silent> <leader>/ :set hlsearch!<CR>

nmap <leader>f <Plug>(easymotion-f)
xmap <leader>f <Plug>(easymotion-f)
nmap <leader>F <Plug>(easymotion-F)
xmap <leader>F <Plug>(easymotion-F)
nmap <leader>t <Plug>(easymotion-t)
xmap <leader>t <Plug>(easymotion-t)
nmap <leader>T <Plug>(easymotion-T)
xmap <leader>T <Plug>(easymotion-T)

nnoremap ]w :NextTrailingWhitespace<CR>
nnoremap [w :PrevTrailingWhitespace<CR>

noremap <silent> <C-t> :FZF<CR>
noremap <silent> <leader>o :GitFiles<CR>
noremap <silent> <leader>O :Files<CR>
noremap <silent> <leader>b :Buffers<CR>

nnoremap <leader>W :StripWhitespace<CR>

if has('python')
  noremap <C-f> :pyf /usr/share/clang/clang-format-15/clang-format.py<CR>
  inoremap <C-f> <C-o>:pyf /usr/share/clang/clang-format-15/clang-format.py<CR>
elseif has('python3')
  noremap <C-f> :py3f /usr/share/clang/clang-format-15/clang-format.py<CR>
  inoremap <C-f> <C-o>:py3f /usr/share/clang/clang-format-15/clang-format.py<CR>
endif

nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeFind<CR>

nnoremap <leader>D <Plug>(YCMHover)
nnoremap <F12> :YcmDiags<CR>

" Vundle plugin manager configuration
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'airblade/vim-gitgutter'
Plugin 'alejandroclaro/vim-ai-assistant'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'bfrg/vim-cpp-modern'
Plugin 'cdelledonne/vim-cmake'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'delimitMate.vim'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'easymotion/vim-easymotion'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'fatih/vim-go'
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
Plugin 'powerline/powerline-fonts'
Plugin 'rhysd/vim-grammarous'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'sheerun/vim-polyglot'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'VundleVim/Vundle.vim'
Plugin 'wfxr/minimap.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'ryanoasis/vim-devicons'
call vundle#end()

" Color scheme
set guifont=Hack\ Nerd\ Font
colorscheme dracula

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

" Nerd tree configuration
let NERDTreeHighlightCursorline = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeChDirMode = 2
let NERDTreeShowLineNumbers = 1

let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeLimitedSyntax = 1

" Nerd commenter configuration
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" FZF configuration
"let g:fzf_layout = { 'down': '40%' }

" Airline plugin configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Minimap configuration
let g:minimap_auto_start = 1
let g:minimap_git_colors = 1

" rainbow parentheses and highlight enhancement
let g:rainbow_active = 1
let g:rainbow_conf = { 'ctermfgs': [ '33', '226', '112', '165', '231' ] }

" Indent guides configuration
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 2

" Better whitespace configuration
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1

" YCM plugin configuration
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_max_diagnostics_to_display = 30
let g:ycm_show_diagnostics_ui = 1
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_auto_trigger = 1
let g:ycm_clangd_args=['--header-insertion=never']
set path+=/usr/include/c++/9

" Easy motion configuration
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 1
let g:EasyMotion_use_smartsign_us = 1

" Grammarous configuration
let g:grammarous#jar_url = 'https://www.languagetool.org/download/LanguageTool-5.9.zip'
let g:grammarous#default_comments_only_filetypes = { '*' : 1, 'help' : 0, 'markdown' : 0, }

" GDB
let g:termdebug_popup = 0
let g:termdebug_wide = 163

packadd! termdebug

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

