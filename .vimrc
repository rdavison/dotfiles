" Vundle header
set nocompatible
filetype off

" Vundle runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'Yggdroot/indentLine'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline'
Plugin 'wting/rust.vim'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'lucy/term.vim'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'jamessan/vim-gnupg'
Plugin 'endel/vim-github-colorscheme'
Plugin 'plasticboy/vim-markdown'
Plugin 'petRUShka/vim-opencl'
Plugin 'MartinLafreniere/vim-PairTools.git'
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" Vundle footer
call vundle#end()
filetype plugin indent on

" Basic settings
set cursorline
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
set background=dark
set termguicolors
set backspace=2
set colorcolumn=80
set hidden
set ruler

" The best colorscheme ever
color gruvbox
let g:gruvbox_contrast_dark = 'hard'

" Set the leader keys to comma
let mapleader=","
let maplocalleader=","


" Allows me to type jj instead always having to reach up to the ESC button
imap jj <Esc>

" Toggles for different services
map <F2> :YcmCompleter GoTo<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>
map <F5> :IndentLinesToggle<CR>
map <F6> :SyntasticCheck<CR>

" Easier moving around windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
map <C-T> zs
" Swap z<CR> and z.
nnoremap z<CR> z.
nnoremap z. z<CR>
" Easier left and right scrolling
nnoremap <C-N> zl
nnoremap <C-P> zh

" Settings for indentLine
let g:indentLine_char = '│'
let g:indentLine_color_term = 235
let g:indentLine_enabled = 0

" Setting for python so the # will not automatically jump to the start of the line
autocmd BufRead *.py inoremap # X<c-h>#<space>

" Default settings for the syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_ocaml_checkers = ['merlin']

" " Since syntastic is slow, force it into passive mode. Press <F6> to toggle
" let g:syntastic_mode_map = { "mode": "passive",
"                            \ "active_filetypes": [],
"                            \ "passive_filetypes": [] }

" Override indentation settings for OCaml, Javascript, HTML, Reason
autocmd BufRead,BufNewFile *.mli,*.ml,*.js,*.html,*.re,*.rei setl ts=2 sw=2 sts=2

" Settings for OCaml development
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute "set rtp^=" . g:opamshare . "/ocp-indent/vim"

" Settings for Makefile
autocmd FileType make set noexpandtab

syntax on
