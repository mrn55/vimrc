set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'msanders/snipmate.vim'
Plugin 'rstacruz/sparkup'
Plugin 'tpope/vim-surround'
Plugin 'joonty/vdebug.git'
call vundle#end()            " required

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set expandtab
set cindent
set scrolljump=5
set scrolloff=3
set nowrap
set backspace=start,eol
set swapfile
set dir=~/tmp
set backupdir=~/tmp

" check php syntax
noremap <C-B> :!php -l %<CR>

function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

" for working with tabs
noremap <tab> :tabnext<CR>
noremap <S-tab> :tabprevious<CR>

syntax on

if &term == "screen"
    let &titlestring=expand("%:t")
    set t_ts=^[k
    set t_fs=^[\
    set title
endif

" Sets debugger port (assumes xdebug is installed
let g:dbgPavimPort = 9009
let g:dbgPavimBreakAtEntry = 1

cabbr <expr> %% expand('%:p:h')
