" ~/.vimrc

set nocompatible
filetype off

""" Plugins """
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" Plugin 'Valloric/MatchTagAlways'
Plugin 'groenewege/vim-less'
Plugin 'othree/html5.vim'
Plugin 'gabrielelana/vim-markdown'
call vundle#end()
filetype plugin indent on
" then run `:PluginInstall`

let g:markdown_enable_spell_checking = 0

""" Colors """
set t_Co=256
set background=dark
colorscheme badwolf
syntax enable " enable syntax highlighting
nnoremap H :set cursorline! cursorcolumn!<CR>

""" Backups and swap files """
set nobackup
set nowritebackup
set noswapfile

""" Spaces & tabs """
set tabstop=4 " number of visual spaces per <TAB> when reading
set softtabstop=4 " number of visual spaces per <TAB> when editing
set shiftwidth=4
set expandtab " turns <TAB>s into spaces
set autoindent " copy indentation from previous line on newline
set smartindent

""" Editing """
set history=200 " set undo cache size
set backspace=indent,eol,start
set encoding=utf8
set listchars=trail:·
set list
set clipboard=unnamed " share clipboard between instances

""" UI """
set number " show line numbers
set showcmd " show previous command in status bar
set cursorline " highlight current line
filetype plugin indent on " load filetype-specific indent files
set wildmenu " show autocomplete for command menu
set lazyredraw " redraw when necessary
set showmatch " highlight matching delimiter
set matchtime=1 " match delimiter for .1s
set scrolloff=5 " show at least 5 lines around the cursor

""" Searching """
set incsearch " search as characters are typed
set hlsearch " highlight matches
" turn off search highlight `,<space>`
nnoremap <leader><space> :nohlsearch<CR>

""" Folding """
set foldenable " enable code folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " set max number of nested folds
set foldmethod=indent " fold based on indentation

""" Movement """
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]
" disable arrow keys, except in insert mode
nnoremap <up> <nop>
vnoremap <up> <nop>
nnoremap <down> <nop>
vnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
" B A <start>

""" Leader shortcuts """
let mapleader="," " leader is comma
" ,. escapes insert mode
inoremap <leader>. <esc>
" save session
nnoremap <leader>s :mksession<CR>

""" General """
" metasyntactic variables
inoremap <leader>u unicorns
inoremap <leader>r rainbows
" stop highlighting search results until next search
nnoremap <leader>hi :noh<CR>
" Toggle column highlighting on cursor (useful for html tags)
nnoremap <leader>col :set cursorcolumn!<CR>
" Find next delimiter pair and replace contents
nnoremap <leader>fr( f(ci(
nnoremap <leader>fr[ f[ci[
nnoremap <leader>fr{ f{ci{
nnoremap <leader>fr<lt> f<lt>ci<lt>
nnoremap <leader>fr' f'ci'
nnoremap <leader>fr" f"ci"
" Find and replace delimiter contents backwards
nnoremap <leader>Fr( F(ci(
nnoremap <leader>Fr[ F[ci[
nnoremap <leader>Fr{ F{ci{
nnoremap <leader>Fr<lt> F<lt>ci<lt>
nnoremap <leader>Fr' F'ci'
nnoremap <leader>Fr" F"ci"
" Blank line above/below cursor
inoremap <leader>o <esc>o<esc>k
nnoremap <leader>o o<esc>k
inoremap <leader>O <esc>O<esc>j
nnoremap <leader>O O<esc>j
" Space before cursor
nnoremap <leader><space> i<space><esc>l
" Semicolon at EOL
nnoremap <leader>; A;<esc>

""" language-specific macros """

" bash
inoremap <leader>#! #!/usr/bin/env bash<esc>o

" JavaScript
" write function definition, end with cursor in input arguments
inoremap <leader>jsf function()<space>{<CR>x<CR>};<esc>k$xk$2hi
" write module boilerplate
inoremap <leader>jsm (function()<space>{<CR>'use<space>strict';<CR><CR>x<CR>}());<esc>ks
" function body placeholder
inoremap <leader>jsc /*<space>*/

" HTML
nnoremap <leader>d o<lt>/div><esc>5h
nnoremap <leader>htc I<lt>!--<esc>A--><esc>
nnoremap <leader>htv ^4x$2hD
" Bootstrap
inoremap <leader>bsd <lt>div<space>class="row">

" CSS
" finish style block
inoremap <leader>csd <space>{<CR>x<CR>}<esc>k$s
" comment current line
nnoremap <leader>csc I/*<esc>A*/<esc>
" un-comment current line
nnoremap <leader>csv ^2x$hD
" insert inline comment at end of current line
inoremap <leader>csi <space>/*<space><space>*/<esc>F<space>i
nnoremap <leader>csi A<space>/*<space><space>*/<esc>F<space>i
" change property on current line
nnoremap <leader>csp $cT:<space>
