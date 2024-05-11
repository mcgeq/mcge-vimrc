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

# coc-explorer
nmap <leader>e :CocCommand explorer<CR>

# fzf

nmap <C-p> :FZF<CR>
# 在命令行模式下也可以使用 <Ctrl-p> 快捷键调用 FZF
cnoremap <C-p> <C-r>=fzf#run({'sink': 'insert'})<CR>
nmap <C-f> :Files<CR>

