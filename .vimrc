call plug#begin() 

Plug 'AlessandroYorba/Sierra'

call plug#end()

syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set number
set hlsearch
set ruler
set relativenumber
colorscheme sierra 
hi Normal guibg=NONE ctermbg=NONE

" Auto-close brackets and quotes
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
