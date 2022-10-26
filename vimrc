"自动换行
"set wrap

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

" 关于空行的设置
set noeol

" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
" Plug 'tpope/vim-surround',{'branch': 'master'}
Plug 'andrewstuart/vim-kubernetes'
call plug#end()

" 设置默认tab是2个空格
set tabstop=4
set shiftwidth=4
set expandtab
"set smartindent

" Setting the hlsearch
set hlsearch

set nocompatible
"filetype indent on 
filetype on

set clipboard=unnamed

set encoding=utf8
set fileencodings=utf8,gbk,gb2312,gb18030

set hidden "切换的时候隐藏当前的界面
set updatetime=100 " 刷新时间
" set shortmess+=c " 精简信息


" For TAB function to select the prompt and apply it.
inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ?
  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Configuration for gruvbox SECTION
" let g:gruvbox_(option) = '(value)'
" colorscheme inkpot
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
let g:gruvbox_underline = '1'
let g:gruvbox_bold = '1'
let g:gruvbox_italic = '1'
let g:gruvbox_undercurl = '1'
let g:gruvbox_transparet_bg = '1'
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_italicize_comments = '1'
let g:gruvbox_improved_warnings = '1'
let g:gruvbox_improved_strings = '1'

" Coc Configurations
let g:coc_global_extensions = [ 'coc-pairs', 'coc-sh', 'coc-python', 'coc-git', 'coc-vimlsp', 'coc-highlight', 'coc-yaml', 'coc-json', 'coc-pyright', 'coc-docker' ]

" close the noisy beep
set noeb
set vb t_vb=

" NerdTree
nnoremap <C-t> :NERDTreeToggle<CR>

" VIM-Kebernetes Keybinding
au FileType yaml nmap <leader>r :KubeApply<CR>
au FileType yaml nmap <leader>e :KubeDelete<CR>
au FileType yaml nmap <leader>dr :KubeApplyDir<CR>
au FileType yaml nmap <leader>de :KubeDeleteDir<CR>
