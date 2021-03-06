set nocompatible              " be iMproved
filetype off                  " required to get Vundle to work, it's enabled later on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" Other plugins Vundle manages
Bundle 'scrooloose/syntastic'
Bundle 'rodjek/vim-puppet'
Bundle 'Valloric/YouCompleteMe'
Bundle 'godlygeek/tabular'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle "tomtom/tlib_vim"
Bundle 'honza/vim-snippets'
Bundle 'SirVer/ultisnips'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on

let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

set nonumber
set backspace=indent,eol,start
set showmatch
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set ai
set viminfo='10,\"100,:20,%,n~/.viminfo

" use 4 spaces in Python and PowerShell
autocmd FileType python setlocal ts=4 sts=4 sw=4
    
syntax on

" Make encrypting strings and inserting in to document super easy ;)
command -nargs=1 Eyaml :read !eyaml encrypt -o block -s <args> 2> /dev/null

" Ensure that vim returns to the last position you were in the file you opened
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
