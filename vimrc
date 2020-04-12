"自动换行
set wrap
"提示命令
set showcmd
"显示菜单
set wildmenu
"显示行号  
set nu
"显示光标所在的行
set cursorline
"显示关联的行号
set relativenumber
"显示语法高亮
syntax on
"锁定前后的5行
set scrolloff=5
"我的placeholder
map <LEADER><LEADER> <Esc>/<--><CR>:nohlsearch<CR>c4l

"安装插件
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
call plug#end()

" 设置默认tab是4个空格
set ts=4
set expandtab

set hlsearch

colorscheme ron

set nocompatible

filetype on

set autoindent

"change the result
