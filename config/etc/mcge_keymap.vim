vim9script

import autoload "mcge_utils.vim"

# -------------------- 保存退出 start --------------------
# 保存
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>
vnoremap <C-s> <Esc>:w<CR>

# 退出

# -------------------- 保存退出 end   --------------------

# -------------------- 窗口 start --------------------
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
# -------------------- 窗口 end --------------------

# -------------------- 命令行 start --------------------
# 命令行移动
cnoremap <C-h> <Home>
cnoremap <C-l> <End>
# -------------------- 命令行 end --------------------

# -------------------- buffer start --------------------
# 使用 alt q 关闭当前 buffer
nnoremap <M-q> <esc>:bdelete<cr>

# 切换buffer
nnoremap <M-p> <esc>:bprevious<cr>
nnoremap <M-n> <esc>:bnext<cr>
# -------------------- buffer end --------------------

# -------------------- 宏 start --------------------
# 去除 EX 模式
nmap Q <nop>
# 使用 Q 进行宏录制
noremap Q q
# -------------------- 宏 end --------------------

# -------------------- coc-explorer start --------------------
# coc-explorer
nmap <leader>e :CocCommand explorer<CR>
nmap <leader>ed <Cmd>CocCommand explorer --preset .vim<CR>
nmap <leader>ef <Cmd>CocCommand explorer --preset floating<CR>
nmap <leader>ec <Cmd>CocCommand explorer --preset cocConfig<CR>
nmap <leader>eb <Cmd>CocCommand explorer --preset buffer<CR>

# List all Presets
nmap <leader>el <Cmd>CocList explPresets<CR>
# -------------------- coc-explorer end --------------------

# -------------------- coc-yank start --------------------
nnoremap <silent> <leader>y :<C-u>CocList -A --normal yank<CR> 
# -------------------- coc-yank end   -------------------- 

# -------------------- fzf start --------------------
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
# -------------------- fzf end --------------------

# -------------------- coc start --------------------
# Use tab for trigger completion with characters ahead and navigate
# NOTE: There's always complete item selected by default, you may want to enable
# no select by `"suggest.noselect": true` in your configuration file
# NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
# other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ mcge_utils.CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

# Make <CR> to accept selected completion item or notify coc.nvim to format
# <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

# Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

# Use `[g` and `]g` to navigate diagnostics
# Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

# GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

# Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

# Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

# Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

# Applying code actions to the selected code block
# Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

# Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
# Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
# Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

# Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

# Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

# Map function and class text objects
# NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

# Remap <M-f> and <M-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <M-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <M-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <M-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <M-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <M-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <M-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

# Use CTRL-S for selections ranges
# Requires 'textDocument/selectionRange' support of language server
nmap <silent> <M-s> <Plug>(coc-range-select)
xmap <silent> <M-s> <Plug>(coc-range-select)

# Mappings for CoCList
# Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
# Manage extensions
nnoremap <silent><nowait> <space>l  :<C-u>CocList extensions<cr>
# Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
# Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
# Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
# Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
# Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
# Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
# -------------------- coc end --------------------
