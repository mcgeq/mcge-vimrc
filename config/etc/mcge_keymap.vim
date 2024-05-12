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

# fzfx
# ======== files ========

# find files, filter hidden and ignored files
nnoremap <space>f :\<C-U>FzfxFiles<CR>
# find by visual selected
xnoremap <space>f :\<C-U>FzfxFilesV<CR>
# unrestrictly find files, include hidden and ignored files
nnoremap <space>uf :\<C-U>FzfxFilesU<CR>
# unrestrictly find by visual selected
xnoremap <space>uf :\<C-U>FzfxFilesUV<CR>

# find by cursor word
nnoremap <space>wf :\<C-U>FzfxFilesW<CR>
# unrestrictly find by cursor word
nnoremap <space>uwf :\<C-U>FzfxFilesUW<CR>

# ======== history files ========
nnoremap <space>hf :\<C-U>FzfxHistoryFiles<CR>
# by visual selected
xnoremap <space>hf :\<C-U>FzfxHistoryFilesV<CR>
# by cursor word
nnoremap <space>whf :\<C-U>FzfxHistoryFilesW<CR>

# ======== buffers ========

# find buffers
nnoremap <space>b :\<C-U>FzfxBuffers<CR>
# by visual selected
xnoremap <space>b :\<C-U>FzfxBuffersV<CR>
# by cursor word
nnoremap <space>wb :\<C-U>FzfxBuffersW<CR>

# ======== live grep ========

# live grep, filter hidden and ignored files
nnoremap <space>l :\<C-U>FzfxLiveGrep<CR>
# by visual selected
xnoremap <space>l :\<C-U>FzfxLiveGrepV<CR>
# unrestrictly live grep, include hidden and ignored files
nnoremap <space>ul :\<C-U>FzfxLiveGrepU<CR>
# unrestrictly by visual selected
xnoremap <space>ul :\<C-U>FzfxLiveGrepUV<CR>

# by cursor word
nnoremap <space>wl :\<C-U>FzfxLiveGrepW<CR>
# unrestrictly by cursor word
nnoremap <space>uwl :\<C-U>FzfxLiveGrepUW<CR>

# ======== git branches ========

# search git branches
nnoremap <space>gb :\<C-U>FzfxBranches<CR>
# by visual selected
xnoremap <space>gb :\<C-U>FzfxBranchesV<CR>
# by cursor word
nnoremap <space>wgb :\<C-U>FzfxBranchesW<CR>

# ======== vim commands ========

# search vim commands
nnoremap <space>cm :\<C-U>FzfxCommands<CR>
# by visual selected
xnoremap <space>cm :\<C-U>FzfxCommandsV<CR>
# by cursor word
nnoremap <space>wcm :\<C-U>FzfxCommandsW<CR>
