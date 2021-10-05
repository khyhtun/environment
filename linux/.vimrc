scriptencoding utf-8
set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'prettier/vim-prettier'
Plugin 'frazrepo/vim-rainbow'
Plugin 'vim-scripts/Rainbow-Parenthesis'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
" Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'styled-components/vim-styled-components'
Plugin 'jparise/vim-graphql'
Plugin 'vim-scripts/delimitMate.vim'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'dracula/vim'
Plugin 'uptech/vim-ping-cursor'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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






filetype plugin indent on
syntax enable
set background=dark
"set background=light
let g:solarized_termcolors=256
"colorscheme solarized
colorscheme challenger_deep
" syntax on
" colorscheme desert
set nu
set hlsearch
set equalprg=xmllint\ --format\ -
augroup XML
	autocmd!
	autocmd FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
	autocmd FileType xml let g:xml_syntax_folding=1
	autocmd FileType xml setlocal foldmethod=syntax
	autocmd FileType xml :syntax on
	autocmd FileType xml :%foldopen!
augroup END
augroup json_autocmd
	autocmd!
	autocmd FileType json set autoindent
	autocmd FileType json set formatoptions=tcq2l
	autocmd FileType json set textwidth=78 shiftwidth=2
	autocmd FileType json set softtabstop=2 tabstop=8
	autocmd FileType json set expandtab
	autocmd FileType json set foldmethod=syntax
	autocmd FileType json :%foldopen!
augroup END
augroup Java
	autocmd!
	autocmd FileType java set autoindent
	autocmd FileType java set foldmethod=syntax
	autocmd FileType java :%foldopen!
augroup END
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
au! BufRead,BufNewFile *.json set filetype=json

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
"set expandtab
set noexpandtab

"set listchars+=space:␣,tab:>.,trail:~
set listchars+=space:.,tab:\┆\ ,trail:~
"set listchars+=tab:\┆\ ,trail:~
set laststatus=2
set noshowmode
map <C-o> :NERDTreeToggle<CR>
map <C-n> :set number!<CR>
map <C-c> :!pbcopy < %<CR><CR>
map <C-i> :set list!<CR>
map <C-d> :!rm ~/Downloads/*.html<CR><CR>
map <C-u> :PluginInstall<CR>
nnoremap <C-p> :PingCursor<CR>
nnoremap <C-j> :%!python -m json.tool<CR>
nnoremap <C-h> :%!js-beautify<CR>


"Rainbow
let g:rainbow_active = 1

let g:rainbow_load_separately = [
	\ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
	\ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
	\ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
	\ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
	\ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1
set t_Co=256
let g:SimpylFold_docstring_preview=1
