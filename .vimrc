call plug#begin()

  Plug 'lervag/vimtex'
  let g:vimtex_view_method = 'zathura'

call plug#end()

syntax on
colorscheme habamax
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set relativenumber
set hlsearch
set ruler
set clipboard=unnamedplus

inoremap ( ()<left>
inoremap " ""<left>
inoremap ' ''<left>

" bind $ to $$ only in .tex files
augroup tex_dollar_map
  autocmd!
  autocmd filetype tex inoremap $ $$<left>
augroup end
