vim9script

# 窗口
noremap <c-h> <C-w>h
noremap <c-j> <C-w>j
noremap <c-k> <C-w>k
noremap <c-l> <C-w>l
tnoremap <c-h> <c-\><c-n><c-w>h
tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <c-\><c-n><c-w>l


# 分隔窗口
nnoremap <c-w>k :abo split <cr>
nnoremap <c-w>h :abo vsplit <cr>
nnoremap <c-w>j :rightbelow split <cr>
nnoremap <c-w>l :rightbelow vsplit <cr>
# 关闭窗口
nnoremap <silent> q <esc>:close<cr>
vnoremap <silent> q <esc>:close<cr>

# 命令行移动
cnoremap <C-h> <Home>
cnoremap <C-l> <End>

# 使用 alt q 关闭当前 buffer
nnoremap <M-q> <esc>:bdelete<cr>

# 切换buffer
nnoremap <M-p> <esc>:bprevious<cr>
nnoremap <M-n> <esc>:bnext<cr>

# 去除 EX 模式
nmap Q <nop>
# 使用 Q 进行宏录制
noremap Q q

# NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

# 打开vim时自动打开NERDTree
# autocmd VimEnter * NERDTree

# \ + r 定位当前文件所在目录，这个很有用
# 当前从左树进入，又要将当前目录定位到当前位置用这个
map <leader>r :NERDTreeFind<cr> <C-w><C-w>