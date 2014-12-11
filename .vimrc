set nocompatible              " be iMproved
filetype off                  " required to get Vundle to work, it's enabled later on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Other plugins we manage
Bundle 'scrooloose/syntastic'
Bundle 'rodjek/vim-puppet'
Bundle 'Valloric/YouCompleteMe'
Bundle 'godlygeek/tabular'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'

set nonumber
set backspace=indent,eol,start
set showmatch
set expandtab
set tabstop=2
set shiftwidth=4
set ai
set viminfo='10,\"100,:20,%,n~/.viminfo

filetype plugin indent on
syntax on

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
