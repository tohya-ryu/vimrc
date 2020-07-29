filetype plugin indent on

set nocompatible
set t_Co=16
"call pathogen#infect()
syntax on

"set background=dark " dark | light "                       
"colorscheme solarized                                      
    
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set softtabstop=4
set expandtab


set number
set cursorline
hi CursorLine cterm=NONE
set colorcolumn=80
" highlight LineNr ctermfg=grey

autocmd BufNewFile,BufRead *.68k setlocal ft=asm68k
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile,BufRead *.html.erb 
    \ setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile,BufRead *.scss 
    \ setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile,BufRead *.css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType text setlocal nolist wrap linebreak breakat&vim
autocmd FileType text nnoremap j gj
autocmd FileType text nnoremap k gk
autocmd FileType text setlocal colorcolumn=
autocmd FileType markdown nnoremap j gj
autocmd FileType markdown nnoremap k gk
autocmd FileType markdown setlocal colorcolumn=
autocmd FileType netrw setlocal colorcolumn=

" call togglebg#map("<F5>")
"
