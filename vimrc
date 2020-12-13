"----------- 
" 1.常用设置
"----------- 

set number
syntax on
set background=dark
colorscheme hybrid 
" 按F2进入粘贴模式
set pastetoggle=<F2>
" 高亮搜索
set hlsearch
" 设置折叠方式
set foldmethod=indent

kk
"----------- 
" 2.常用映射
"----------- 
  
" 一些方便的映射
let mapleader=','
let g:mapleader=','

" 使用jj进入normal模式
inoremap jj <Esc>`^

" 使用 leader+w 直接保存
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

" 切换 buffer
noremap <silent>[n :bnext<CR>
" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"----------
"3.插件配置
"----------

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'w0ng/vim-hybird'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround' 
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'} 
Plug 'junegunn/fzf.vim' 
Plug 'brooth/far.vim' 
Plug 'python-mode/python-mode',{'branch': 'develop'} 
Plug 'w0rp/ale' 
Plug 'tpope/vim-commentary' 
Plug 'tpope/vim-fugitive' 
call plug#end()

" NERDTree 映射配置
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeIgnore = [
	\ '\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$', '\.pyo$', '\.svn$', '\.swp$', 
	\ '\.DS_Store$', '\.sass-cache$', '\.__pycache__$', '\.egg-info$', '\.ropeproject$',  
	\ ]

" Easymotion 映射配置
nmap ss <Plug>(easymotion-s2)


