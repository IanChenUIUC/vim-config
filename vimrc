set encoding=utf-8

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300
set timeoutlen=500

colorscheme catppuccin_mocha

" sets
set nu
set relativenumber
set expandtab
set ts=4
set sw=4
set noswapfile
set signcolumn=no

filetype indent on
set smartindent

let mapleader=";"

" packs
packadd YouCompleteMe

" YouCompleteMe
let g:ycm_enable_inlay_hints=1
let g:ycm_confirm_extra_conf=0
let g:ycm_auto_hover='false'
let g:ycm_clangd_args=['--clang-tidy']

" vimscript exercises
inoremap <c-u> <esc><c-v>eUi
nnoremap <c-u> <esc><c-v>eUn

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
noremap <Left> <nop>

noremap <leader>; <c-w>w
nnoremap daw <esc><c-v>bed

" other maps
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap {<cr> {<cr><cr>}<esc>ki

" lsp maps
noremap gd :YcmCompleter GoToDefinition<cr>
noremap ty :YcmCompleter GetType<cr>
noremap <leader>K <plug>(YCMHover)
noremap <leader>gs <Plug>(YCMFindSymbolInWorkspace)

noremap <leader>rn :YcmCompleter RefactorRename
noremap <leader>fo :YcmCompleter Format<cr>
noremap <leader>fi :YcmCompleter FixIt

nnoremap <silent> <leader>ih <Plug>(YCMToggleInlayHints)

" autocommands
" autocmd BufRead *.c :YcmCompleter Format

" lsp settings
hi link YcmInlayHint Comment

hi Pmenu ctermfg=black ctermbg=Green
hi PmenuSel ctermfg=black ctermbg=Green
