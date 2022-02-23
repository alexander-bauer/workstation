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

nmap <C-n> :NERDTreeToggle<CR> \| NERDTreeFind<CR>
nnoremap <silent> \s :<C-u>set operatorfunc=<SID>SortLinesOpFunc<CR>g@

" Plugins
if !empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
    call plug#begin('~/.vim/plugged')

    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    let g:deoplete#enable_at_startup = 1

    Plug 'hashivim/vim-terraform'
    Plug 'nathangrigg/vim-beancount'
    Plug 'preservim/nerdtree'

    call plug#end()
endif

" Vim-Terraform options
let g:terraform_align = 1
let g:terraform_fmt_on_save = 1
