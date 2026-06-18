call plug#begin() 

Plug 'AlessandroYorba/Sierra'
Plug 'lervag/vimtex'

call plug#end()

let g:vimtex_view_method = 'zathura'

syntax on
colorscheme sierra 

hi Normal guibg=NONE ctermbg=NONE

set tabstop=4
set shiftwidth=4
set expandtab
set ai
set number
set hlsearch
set ruler
set relativenumber
set clipboard=unnamedplus

" Auto-close brackets and quotes
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
