call plug#begin()
Plug 'jasonccox/vim-wayland-clipboard'
Plug 'SirVer/ultisnips'
Plug 'lervag/vimtex'
call plug#end()
syntax on
colorscheme retrobox
set background=dark
set tabstop=2
set shiftwidth=2
set smartindent 
set autoindent
set expandtab
set ai
set relativenumber
set hlsearch
set ruler
let g:vimtex_view_method = 'zathura'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips']
autocmd FileType tex inoremap $ $$<Left>
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
