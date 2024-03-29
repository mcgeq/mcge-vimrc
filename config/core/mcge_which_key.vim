vim9script

g:which_key_map = {}

g:which_key_map.f = {'name': '+file' }
nnoremap <silent> <leader>fs :update<CR>
g:which_key_map.f.s = 'save-file'

nnoremap <silent> <leader>fd :e $MYVIMRC<CR>
g:which_key_map.f.d = 'open-vimrc'

nnoremap <silent> <leader>oq  :copen<CR>
nnoremap <silent> <leader>ol  :lopen<CR>
g:which_key_map.o = {
      'name': '+open',
      'q': 'open-quickfix',
      'l': 'open-locationlist',
}