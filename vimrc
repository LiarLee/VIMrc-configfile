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

" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

" 设置默认tab是4个空格
set ts=4
set expandtab

" Setting the hlsearch
set hlsearch

" Setting Hightlight Color
colorscheme ron

set nocompatible

filetype on

set autoindent

set clipboard=unnamed

set encoding=utf8
set fileencodings=utf8,gbk,gb2312,gb18030

" COC Configuration
" 
let g:coc_global_extionsions = ['coc-python', 'coc-vimlsp']
set hidden "切换的时候隐藏当前的界面
set updatetime=100 " 刷新时间
set shortmess+=c " 精简信息
set signcolumn=number

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
autocmd CursorHold * silent call CocActionAsync('highlight')
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)




" Markdown Preivew function 
"
"map r :call ComplieRunGcc()<CR>
"func! ComplieRunGcc()
"        exec "w"
"        if &filetype == 'markdown'
"                exec "MarkdownPreview"
"        endif
"endfunc

" Config Part ~~
"
"let g:mkdp_browser = 'firefox'
"let g:mkdp_auto_start = 1
"let g:mkdp_auto_open = 1
"let g:mkdp_auto_close = 1
"let g:mkdp_refresh_slow = 0
"let g:mkdp_browsefunc = 'MKDP_browserfunc_default'

