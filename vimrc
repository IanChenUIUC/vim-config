" https://raw.githubusercontent.com/neoclide/coc.nvim/master/coc-example.vim

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300
set timeoutlen=500
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" sets
set nu
set relativenumber
set expandtab
set ts=4
set sw=4

let mapleader=";"

" packs
packadd YouCompleteMe

" YouCompleteMe
let g:ycm_enable_inlay_hints=1
let g:ycm_confirm_extra_conf=0

" vimscript exercises

inoremap <c-u> <esc><c-v>eUi
nnoremap <c-u> <esc><c-v>eUn

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

noremap <esc> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
noremap <Left> <nop>

noremap <leader>; <c-w>w
nnoremap daw <esc><c-v>bed

" lsp maps
noremap <leader>gd <Plug>GoToDefintion
noremap <leader>gs <Plug>GoToSymbol
noremap <leader>ty <Plug>GetType

noremap <leader>rn <Plug>RefactorRename
noremap <leader>exe <Plug>ExecuteCommand
noremap <leader>fo :YcmCompleter Format<cr>

nnoremap <silent> <leader>h <Plug>(YCMToggleInlayHints)

" autocommands
autocmd BufWritePre,BufRead *.c :YcmCompleter Format

" lsp settings
hi link YcmInlayHint Comment
