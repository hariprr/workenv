" Turn on syntx highlighting
syntax on

" needed for vimWiki
set nocompatible
filetype plugin on

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
