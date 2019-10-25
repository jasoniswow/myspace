" Make VIM more like modern IDE
" use Vundle to manage VIM extensions
"	install Vundle first: git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"	create file: touch ~/.vimrc
"	open VIM and run :PluginInstall
"	in case the auto installation fails, manually install, go to ~/.vim/bundle/YouCompleteMe and do: git pull; git submodule update --init --recursive

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations
"ctrl+J move to split below
"ctrl+K move to split above
"ctrl+L move to split right
"ctrl+H move to split left
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

Plugin 'tmhedberg/SimpylFold'

"auto indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

Plugin 'vim-scripts/indentpython.vim'

"flag unnecessary white-space
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"UTF-8 support
set encoding=utf-8

"auto-complete with YouCompleteMe
Bundle 'Valloric/YouCompleteMe'

"auto-complete setup
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"syntax checking and highlighting
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
let python_highlight_all=1
syntax on

"color scheme
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme zenburn
"endif
"switch to dark theme with F5
"call togglebg#map("<F5>")

"file browsing
Plugin 'scrooloose/nerdtree'
"ignore .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"super searching with ctrl+P
Plugin 'kien/ctrlp.vim'

"line numbering
set nu

"git integration (perform basic command without leaving vim)
Plugin 'tpope/vim-fugitive'

"power-bar showing current virtual-env
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"system clipboard
set clipboard=unnamed

