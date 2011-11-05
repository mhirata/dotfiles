set nocompatible
set rtp+=~/.vim/vundle.git
call vundle#rc()

Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
set wildmode=list:longest,list:full
set number
set background=dark

" 自動的に QuickFix リストを表示する
autocmd QuickFixCmdPost make,grep,grepadd,vimgrep,vimgrepadd cwin
autocmd QuickFixCmdPost lmake,lgrep,lgrepadd,lvimgrep,lvimgrepadd lwin
