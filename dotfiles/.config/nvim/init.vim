" Allow modelines
set modeline

" Set line numbering
set number relativenumber

" Show whitespace where it matters
set list listchars=trail:·,tab:»·

let g:netrw_liststyle = 3
let g:netrw_banner = 0

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" Custom Bindings

function! s:SortLinesOpFunc(...)
    '[,']sort
endfunction

nnoremap <silent> \s :<C-u>set operatorfunc=<SID>SortLinesOpFunc<CR>g@

" Plugins
if !empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
    call plug#begin('~/.vim/plugged')

    Plug 'nathangrigg/vim-beancount'

    call plug#end()
endif
