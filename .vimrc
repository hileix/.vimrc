" 语法高亮
syntax on

"设置 leader 键为逗号
let mapleader=','
let g:mapleader=','

" 显示行号
set number

" 高亮搜索
set hlsearch

"使用 jj 进入 normal 模式，`^ 表示回到上一次编辑的模式
inoremap jj <Esc>`^

"使用 leader+w 直接保存
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

"使用 ctrl+h/j/k/l 进行 window 的切换
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"切换 Buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> [n :bnext<CR>

" nerdtree 插件配置：配置使用 vim 自动打开文件树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" 插件
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'

Plug 'Yggdroot/indentLine'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()
