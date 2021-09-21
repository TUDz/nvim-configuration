call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'morhetz/gruvbox'
call plug#end()

" Configuracion de editor NVIM
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave, CompleteDone * if pumvisible() == 0 | pclose | endif
set splitbelow
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
autocmd VimEnter * NERDTree
let g:airline_theme='molokai'
colorscheme gruvbox
set background=dark " use dark mode
set number
set relativenumber
