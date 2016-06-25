colorscheme wombat256mod 

inoremap jk <esc>

syntax on
filetype off
filetype plugin indent on

set nocompatible
set textwidth=0 wrapmargin=0
set numberwidth=3
set ruler
set hlsearch
set tabstop=2
set softtabstop=2
set expandtab
set wildmenu
set nowrap
set nrformats=
set rnu

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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'JuliaLang/julia-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
call vundle#end()

