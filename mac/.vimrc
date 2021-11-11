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
Plugin 'elzr/vim-json'
Plugin 'frazrepo/vim-rainbow'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'styled-components/vim-styled-components'
Plugin 'jparise/vim-graphql'
Plugin 'Raimondi/delimitMate'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'dracula/vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

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
"


filetype plugin indent on
syntax enable
set background=dark
let g:solarized_termcolors=256
"colorscheme solarized
colorscheme challenger_deep
let g:rainbow_active = 1
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
augroup JAVA
	autocmd!
	autocmd FileType java set autoindent
	autocmd FileType java setlocal foldmethod=syntax
	autocmd FileType java :%foldopen!
augroup END
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

filetype plugin indent on
" show existing tab with 4 spaces width
" width of tab character
set tabstop=4
" when indenting with '>' use 4 spaces width
" Determines the amount of whitespace to add in normal mode
set shiftwidth=4
" on pressing tab, insert 4 spaces
" vi will use spaces instead of tab
"set expandtab
" vi will use tab and not space for tab character
" when retab is revoked, it will convert spaces to tab (based on tabstop
" value)
set noexpandtab

"set listchars+=space:.,tab:>.,trail:~
set listchars+=space:.,tab:\┇\ ,trail:~
set laststatus=2
set noshowmode
map <C-o> :NERDTreeToggle<CR>
map <C-n> :set number!<CR>
map <C-c> :!pbcopy < %<CR><CR>
map <C-l> :set list!<CR>
map <C-u> :PluginInstall<CR>
nnoremap <C-j> :%!python -m json.tool<CR>
nnoremap <C-h> :%!js-beautify<CR>


" rainbow
let g:rainbow_active = 1

let g:rainbow_load_separately = [
	\ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
	\ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
	\ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
	\ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
	\ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" python
augroup PYTHON
	autocmd!
	autocmd FileType python set autoindent
	autocmd FileType python setlocal foldmethod=indent
	autocmd FileType python setlocal foldlevel=99
	autocmd FileType python :%foldopen
augroup END
au BufNewFile,BufRead *.py
\   set tabstop=4 |
\   set softtabstop=4 |
\   set shiftwidth=4 | 
\	set textwidth=79 |
\	set expandtab |
\	set autoindent |
\	set fileformat=unix
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:python_highlight_all=1
set re=0
