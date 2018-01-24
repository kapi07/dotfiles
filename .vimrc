"dein Scripts-----------------------------
if &compatible
    set nocompatible
endif
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    let s:toml= '~/dotfiles/.dein.toml'
    let s:toml_lazy = '~/dotfiles/.dein_lazy.toml'
    call dein#load_toml(s:toml, {'lazy': 0})
    call dein#load_toml(s:toml_lazy, {'lazy': 1})

    call dein#end()

    call dein#save_state()
endif
if dein#check_install(['vimproc.vim'])
    call dein#install(['vimproc.vim'])
endif
if dein#check_install()
    call dein#install()
endif
" End dein Scripts-------------------------

" -----------------------------------------
" Neovim'sPython Provider
" -----------------------------------------
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog  = '/usr/local/bin/python2'

" Colorscheme------------------------------
set background=dark
colorscheme hybrid

" Basic Setting----------------------------
syntax on
set number
set nobackup
set noswapfile
set cursorline
set virtualedit=all
set clipboard+=unnamed
set ignorecase
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
