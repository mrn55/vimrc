set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between here and vundle#end.

" All of your Plugins must be added before the following line
call vundle#end()

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

" Sets debugger port (assumes xdebug is installed
let g:dbgPavimPort = 9009
let g:dbgPavimBreakAtEntry = 1

cabbr <expr> %% expand('%:p:h')
