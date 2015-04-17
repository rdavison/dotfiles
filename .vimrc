" Vundle header
set nocompatible
filetype off

" Vundle runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
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

" Vundle footer
call vundle#end()            " required
filetype plugin indent on    " required

" Basic settings
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

" This colorscheme comes from vim-github-colorscheme
colorscheme 0x7A69_dark

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

" Settings for indentLine
let g:indentLine_char = '│'
let g:indentLine_color_term = 235

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

" Since syntastic is slow, force it into passive mode. Press <F6> to toggle
let g:syntastic_mode_map = { "mode": "passive",
                           \ "active_filetypes": [],
                           \ "passive_filetypes": [] }
