" Color theme
colorscheme wombat256mod

" VIM settings
syntax on
filetype off
filetype plugin indent on

set shell=/bin/bash
set term=screen-256color
set nocompatible
set textwidth=0 wrapmargin=0
set formatoptions-=t
set numberwidth=3
set ruler
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set wildmenu
set nowrap
set nrformats=
set rnu
set laststatus=2

" Key mapping
inoremap jk <esc>
map <F10> :NERDTreeToggle<CR>
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" Line size limit indicator
if (exists('+colorcolumn'))
  set colorcolumn=120
  highlight ColorColumn ctermbg=7
endif

" Show relative or absolute line number
function ToggleNumbersOn()
  set rnu!
  set nu
endfunction

function ToggleRelativeOn()
  set nu!
  set rnu
endfunction

autocmd FocusLost * call ToggleNumbersOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleNumbersOn()
autocmd InsertLeave * call ToggleRelativeOn()

" Airline plugin configuration
let g:airline#extensions#tabline#enabled = 1

" Vundle plugin manager configuration
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'a.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'JuliaLang/julia-vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'rainbow_parentheses.vim'
Plugin 'ShowTrailingWhitespace'
Plugin 'StripWhiteSpaces'
Plugin 'The-NERD-tree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'VundleVim/Vundle.vim'
call vundle#end()

