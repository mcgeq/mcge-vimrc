vim9script

# g:UltiSnipsExpandTrigger = "<tab>"
# g:UltiSnipsListSnippets = "<c-tab>"
# g:UltiSnipsJumpForwardTrigger = "<tab>"
# g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

# 禁用coc-snippets 的默认快捷键
# g:coc_snippet_next = ""
# g:coc_snippet_prev = ""


# g:UltiSnipsSnippetDirectories = ["coc#util#snippets()", $"{g:mcge_customvimrcdir}/snippets"]
# Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

# Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

# Use <C-j> for jump to next placeholder, it's default of coc.nvim
g:coc_snippet_next = '<c-j>'

# Use <C-k> for jump to previous placeholder, it's default of coc.nvim
g:coc_snippet_prev = '<c-k>'

# Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

# Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
