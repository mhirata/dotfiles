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

set autoindent
set background=dark
set cursorline
set expandtab
set laststatus=2
set nobackup
set number
set shiftwidth=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%=%l,%c%v%8p
set t_Co=256
set wildmode=list:longest,list:full
set tabstop=4

filetype plugin indent on

highlight CursorLine cterm=none term=reverse ctermbg=242

" 自動的に QuickFix リストを表示する
autocmd QuickFixCmdPost make,grep,grepadd,vimgrep,vimgrepadd cwin
autocmd QuickFixCmdPost lmake,lgrep,lgrepadd,lvimgrep,lvimgrepadd lwin

autocmd InsertEnter * highlight StatusLine ctermfg=red
autocmd InsertLeave * highlight StatusLine ctermfg=white

" swapの作成場所
set directory=~/.vim/tmp
if !isdirectory(expand("$HOME/.vim/tmp"))
  call mkdir(expand("$HOME/.vim/tmp"), "p")
endif
