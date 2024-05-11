vim9script

# fzf config
g:fzf_vim = {}
# 使用 AG 作为默认搜索命令
# g:fzf_command_prefix = 'ag --hidden --ignore .git -g ""'
g:fzf_command_prefix = 'Rg --hidden --ignore .git --smart-case --no-heading --line-number'

g:fzf_vim.preview_window = ['hidden,right,50%,<70(up,40%)', 'ctrl-/']
g:fzf_vim.buffers_jump = 1
g:fzf_vim.commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

g:fzf_layout = {
  "window": {
        "width": 0.9,
        "height": 0.6,
\ }
\ }

# command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)
