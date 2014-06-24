set nocompatible
filetype off
set rtp+=~/.vim/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-haml'
Bundle 'vim-ruby/vim-ruby'
Bundle 'Shougo/neosnippet.vim'

syn on

set wildmode=list:longest,list:full
set number
set autoindent
set shiftwidth=2
set expandtab
set cursorline
set background=dark

filetype plugin indent on

" 自動的に QuickFix リストを表示する
autocmd QuickFixCmdPost make,grep,grepadd,vimgrep,vimgrepadd cwin
autocmd QuickFixCmdPost lmake,lgrep,lgrepadd,lvimgrep,lvimgrepadd lwin
