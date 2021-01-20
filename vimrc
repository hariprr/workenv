" Turn on syntx highlighting
syntax on

" Display typed commands on status line
set showcmd

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

" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer

" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion| (:help ins-completion)

" HIGHLIGHTS:
" - ^n for anything specified by the 'complete' option
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick! including absolute paths)

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggesion list
" - Or just ^n to cycle through suggestion list

" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0            " disable annoying banner
let g:netrw_browse_split=4      " open in prior window
let g:netrw_altv=1              " open splits to the right
let g:netrw_liststyle=3         " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
"  - :edit a folder to open a file browser
"  - <CR>/v/t to open in an h-split/v-split/tab
"  - check |netrw-browse-maps| for more mappings

" SNIPPETS:
" Read an enpty HTML template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>
" Understand how this command works
" - For remapping
" - How to use :read

" USING HELP:
" - use :help
" - :help ^N            " all uses of CTRL+N in normal mode
" - :helo i_^N          " same command in insert mode
" - :helpgrep <tex>     " grep help
