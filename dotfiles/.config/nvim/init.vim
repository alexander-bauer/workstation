" Allow modelines
set modeline

" Set line numbering
set number relativenumber

" Show whitespace where it matters
set list listchars=trail:·,tab:»·

" Disable search highlighting
set nohlsearch

let g:netrw_liststyle = 3
let g:netrw_banner = 0

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab

" Custom Bindings

function! s:SortLinesOpFunc(...)
    '[,']sort
endfunction

nnoremap <silent> \s :<C-u>set operatorfunc=<SID>SortLinesOpFunc<CR>g@

" Plugins
if !empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
    call plug#begin('~/.vim/plugged')

    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    let g:deoplete#enable_at_startup = 1

    Plug 'Yggdroot/indentLine'
    Plug 'hashivim/vim-terraform'
    Plug 'liuchengxu/graphviz.vim'
    Plug 'nathangrigg/vim-beancount'
    Plug 'preservim/nerdtree'

    call plug#end()
endif

" indentLine options
let g:indentLine_char = '·'

" Vim-Terraform options
let g:terraform_align = 1
let g:terraform_fmt_on_save = 1

" NERDTree settings

"Buffers
set hidden

function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

function! ToggleNT()
    NERDTreeToggle
endfunction

map <c-n> <Esc>:call ToggleNT()<cr>

" Highlight the current buffer.
autocmd BufEnter * if &modifiable && IsNERDTreeOpen() && bufnr('') != bufnr(t:NERDTreeBufName) | NERDTreeFind | wincmd p | endif
" Automatically exit if NERDTree is the last buffer.
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
