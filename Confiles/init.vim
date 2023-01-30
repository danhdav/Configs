source $HOME/.config/nvim/plugins.vim

let mapleader=','
set clipboard+=unnamedplus "download xclip first
set number relativenumber
set ruler
set linebreak
set encoding=utf-8
set fileencoding=utf-8
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent smartindent
set nocompatible

"Replace all is mapped to S
nnoremap S :%s//g<Left><Left>

"split settings
set splitbelow splitright

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" vimling keybindings
" Deadkeys allows ',",~,and : into keys that can be combined with letters for accents
" I do not know what prose and ipa functions do
nm <leader><leader>d :call ToggleDeadKeys()<CR>
imap <leader><leader>d <esc>:call ToggleDeadKeys()<CR>a
" nm <leader><leader>i :call ToggleIPA()<CR>
" imap <leader><leader>i <esc>:call ToggleIPA()<CR>a
" nm <F8> :call ToggleProse()<CR>

syntax on
filetype plugin on

"" Center in on find
nnoremap n nzzzv
nnoremap N Nzzzv

"" Close tags I DONT KNOW WHAT THIS DOES
vmap < <gv
vmap > >gv

"" Vimwiki specific
let g:vimwiki_list = [{'path': '~/dox/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

"" R markdown compiling with <F5> 
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

"" HTML only, inoremap means you must be in insert mode
nnoremap <Space><Space> <Esc>/<++><Enter>"_c4l

autocmd FileType html inoremap ;h <h1></h1><Space><++><Esc>4ba
autocmd FileType html inoremap ;p <p></p><Space><++><Esc>4ba
autocmd FileType html inoremap ;b <b></b><Space><++><Esc>4ba
autocmd FileType html inoremap ;d <div></div><Space><++><Esc>4ba

"VIM BUFFER SETTINGS
set wildmenu
" use :buffers to list out the buffers
"

