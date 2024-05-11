vim9script

# fzf config

# 使用 AG 作为默认搜索命令
# g:fzf_command_prefix = 'ag --hidden --ignore .git -g ""'
g:fzf_command_prefix = 'Rg --hidden --ignore .git --smart-case --no-heading --line-number'

g:fzf_layout = {
  "window": {
        "width": 0.9,
        "height": 0.6,
\ }
\ }

command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)

# command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': '--preview-window right:60%'}))
