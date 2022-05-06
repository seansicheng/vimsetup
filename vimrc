syntax on

set noerrorbells
set expandtab
set number
set smartindent
set path+=**
set wildmenu
set shiftwidth=4
set tabstop=4 softtabstop=4
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

"set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'morhetz/gruvbox'
Plugin 'xavierd/clang_complete'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
call vundle#end()


colorscheme gruvbox
set background=dark

autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

