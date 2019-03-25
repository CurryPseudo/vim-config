autocmd BufWritePost $MYVIMRC source $MYVIMRC
let mapleader = ' '

set incsearch
set ignorecase
set wildmenu

set laststatus=2
set ruler
set number
set cursorline
""set cursorcolumn
set encoding=utf-8

"Settings for powerline
let g:Powerline_symbols = 'fancy'
set t_Co=256
let g:Powerline_colorscheme = 'solarized256'
"
syntax enable
syntax on

filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set bs=2
set nowrap
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
set nocompatible
filetype off

call plug#begin()
Plug 'VundleVim/Vundle.vim'
Plug 'Lokaltog/vim-powerline'
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight'
Plug 'https://github.com/SirVer/ultisnips'
"Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'https://github.com/ervandew/screen'
Plug 'https://github.com/CurryPseudo/vim-snippet'
Plug 'https://github.com/endel/vim-github-colorscheme'
""Plug 'https://github.com/justmao945/vim-clang'
Plug 'w0rp/ale'
Plug 'https://github.com/Rip-Rip/clang_complete'

call plug#end()

" colorscheme
colorscheme github

filetype on
filetype plugin on



""let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

""let g:ycm_confirm_extra_conf = 0
""let g:ycm_min_num_of_chars_for_completion=1
""let g:ycm_cache_omnifunc=0
""let g:ycm_seed_identifiers_with_syntax=1
""noremap <leader>jc :YcmCompleter GoToDeclaration<CR>
""nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" UltiSnips triggering
let g:UltiSnipsExpandTrigger = '<leader><tab>'
let g:UltiSnipsJumpForwardTrigger = '<leader><tab>'
let g:UltiSnipsJumpBackwardTrigger = '<leader><s-tab>'
let g:UltiSnipsSnippetDirectories=["~/.vim/bundle/vim-snippet", "bundle/vim-snippet"]
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
let g:ctrlp_map = '<c-p>'
