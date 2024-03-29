vim9script

set guioptions-=T               # 隐藏工具栏
set guioptions-=m               # 隐藏菜单栏

# set background=light
# g:gruvbox_italic = 1
# colorscheme gruvbox

# ----------airline------------
g:airline#extensions#tabline#enabled = 1
g:airline#extensions#tabline#left_sep = ' '
g:airline#extensions#tabline#left_alt_sep = '|'
g:airline#extensions#tabline#formatter = 'unique_tail'
g:airline#extensions#tabline#buffer_nr_show = 1
g:airline#extensions#tabline#buffer_nr_format = '%s:'
g:airline#extensions#battery#enabled = 1
g:airline#extensions#whitespace#mixed_indent_always = 0
g:airline_powerline_fonts = 1
g:airline_left_sep = ' '
g:airline_left_alt_sep = '|'
if has('gui_runnig')
	g:airline_theme = 'molokai'
else
	g:airline_theme = 'molokai'
endif

