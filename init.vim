vim9script

var mcge_color = g:mcge_customvimrcdir .. "/colors"
execute 'set runtimepath+=' .. mcge_color

# 获取指定字符串结尾目录的下一级目录
def GetSubDirectories(path: string, suffix: string, next: bool): list<string> 
    var subdirectories = []
    def RecursiveTraversal(directory: string)
	for entry in glob(directory .. '/*', 1, 1)
		if isdirectory(entry)
			if fnamemodify(entry, ':t') ==# suffix
				if next
					for sub_entry in glob(entry .. '/*', 1, 1)
						if isdirectory(sub_entry)
                			add(subdirectories, sub_entry)
						endif
					endfor
				else
					add(subdirectories, entry)
				endif
			endif
			call RecursiveTraversal(entry)
		endif
	endfor
    enddef
    call RecursiveTraversal(path)
    return subdirectories
enddef


var subdires = GetSubDirectories(g:mcge_customvimrcdir, 'start', true)
# for directory in subdires
#	execute 'set runtimepath+=' .. directory
#	var docdir = directory .. "\\doc"
#	if isdirectory(docdir)
#		execute "helptags " .. docdir
#	endif
# endfor

# base
execute 'source ' .. fnameescape(g:mcge_customvimrcdir .. '/config/etc/mcge_base.vim')

var optdires = GetSubDirectories(g:mcge_customvimrcdir, 'opt', false)
# for dires in optdires
#	execute 'set runtimepath+=' .. dires
# endfor

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


