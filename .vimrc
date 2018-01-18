set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'chriskempson/base16-vim'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox
let g:gruvbox_termcolors = 256
set background=dark
set t_Co=256

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" emmet
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to

let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key='<C-Z>'

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline_theme = 'athorp'
let g:airline_theme='base16_colors'
let g:airline_section_z = "%2l, %2c"
let g:airline_section_b = "%{airline#util#wrap(airline#extensions#branch#get_head(),0)}"
if !exists('g:airline_symbols')
                      let g:airline_symbols = {}
                        endif

" tab 
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set vb
set nu
syntax on
set omnifunc=syntaxcomplete#Complete 
filetype plugin indent on


" tagbar
nmap <F8> :TagbarToggle<CR>
