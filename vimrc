" Turn on syntx highlighting
syntax on

" For vimWiki
set nocompatible
filetype plugin on
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>' use 4 spaces width
set shiftwidth=4

" on pressing tab, insert 4 spaces
set expandtab

" double esc to save file
map <Esc><Esc> :w<CR>

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Show line numbers
set number

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" more powerful backspacing
set backspace=indent,eol,start

" colorscheme
colo elflord

" bang+w to save file
map !w :w<CR>

" set/unset paste-mode
function! TogglePaste()
    if(&paste == 0)
        set paste
        echo "Paste Mode Enabled"
    else
        set nopaste
        echo "Paste Mode Disabled"
    endif
endfunction

" set/unset number 
function! ToggleNumber()
    if(&number == 0)
        set number
    else
        set nonumber
    endif
endfunction 
    
map !n :call ToggleNumber()<cr>
map !p :call TogglePaste()<cr>

" How to Do 90% of What Plugins Do (With Just Vim)
" https://www.youtube.com/watch?v=XA2WjJbmmoM

" FINDING FILES

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
