" `Vundle header`.
" 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins added by user.
Plugin 'altercation/vim-colors-solarized'  " colorscheme.
Plugin 'nvie/vim-flake8'  " Press <F7> to run flake8 on it.
Plugin 'nathanaelkane/vim-indent-guides'  " intending bar.
Plugin 'scrooloose/nerdtree'  " slide of files.
Plugin 'scrooloose/nerdcommenter'  " help programmer to comment stuff.
Plugin 'tpope/vim-surround'  " facilitate surrounding.
Plugin 'thinca/vim-quickrun'  " run current code file.
Plugin 'Valloric/YouCompleteMe'  " powerful auto-completion.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Global plugins configuration.
"
" `YCM configuration`.
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" `NERDTree`
let suffixes = ['.pdf', '.log', '.out', '~', '.o', '.3', '.6', '.aux', '.toc', '.bbl', '.blg', '.log', '.pyc']
let NERDTreeIgnore = ['__pycache__']
for suffix in suffixes
	let NERDTreeIgnore += [ escape(suffix, '.~') . '$' ]
endfor
" `vim-colors-solarized`.
syntax enable
if has("gui_macvim")
	" full screen
	set lines=999 columns=999
else
	let g:solarized_termcolors=256
endif
set background=dark
colorscheme solarized


set ignorecase
set clipboard=unnamed
" Encoding. 
set fileencoding=utf-8
set encoding=utf-8
set guifontwide=STSong:h8
" Length of tab.
set tabstop=2
