set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'endel/vim-github-colorscheme'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/powerline'
Plugin 'wting/rust.vim'
Plugin 'petRUShka/vim-opencl'
Plugin 'Yggdroot/indentLine'
Plugin 'lucy/term.vim'
Plugin 'flazz/vim-colorschemes'
"Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set smartindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set hlsearch
set incsearch
set nowrap
set mouse=ncr
set virtualedit=all
set t_Co=256
"colorscheme term
colorscheme 0x7A69_dark
imap jj <Esc>
map <F2> :YcmCompleter GoTo<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>
map <F5> :IndentLinesToggle<CR>
map <F6> :SyntasticCheck<CR>

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

map <Silent> <Leader>b oimport pdb; pdb.set_trace()<Esc>
map <Silent> <Leader>B Oimport pdb; pdb.set_trace()<Esc>

let g:indentLine_char = '│'
let g:indentLine_color_term = 235
autocmd BufRead *.py inoremap # X<c-h>#<space>


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['pylint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { "mode": "passive",
                           \ "active_filetypes": [],
                           \ "passive_filetypes": [] }
