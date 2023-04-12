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
autocmd BufRead,BufNewFile xmkfile setlocal filetype=make

autocmd BufNewFile,BufRead *.68k setlocal ft=asm68k
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile,BufRead *.html.erb 
    \ setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile,BufRead *.html.php 
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

" 'cd' towards the directory in which the current file is edited
" but only change the path for the current window
nnoremap <leader>cd :lcd %:h<CR>

" netrw setup
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
" let g:netrw_winsize = 15
let g:netrw_browse_split = 4
command! Ll Lexplore | vert res 25
" automatically open netrw on left side upon starting vim
" augroup ProjectDrawer
"     autocmd!
"     autocmd VimEnter * :Vexplore
" augroup END

