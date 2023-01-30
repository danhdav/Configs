"" Install vim-plug:
"   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.config/nvim/autoload/plugged/')

    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary' "gcc to comment, gcgc to uncomment, gc to comment selection
    Plug 'vimwiki/vimwiki'
    Plug 'Lukesmithxyz/vimling'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'liuchengxu/vim-which-key'
    Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

