vim9script

# 隐藏报错消息
autocmd VimEnter 
g:NERDTreeShowBookmarks = 1
# 是否显示隐藏文件
g:NERDTreeShowHidden = 1

# 忽略文件
g:NERDTreeIgnore = ['\.pyc[[file]]', '\~$', '\.swp[[file]]']
# 显示文件行数
g:NERDTreeFileLines = 1
#
g:NERDTreeGitStatusIndicatorMapCustom = {
    "Modified": "✹",
    "Staged": "✚",
    "Untracked": "✭",
    "Renamed": "➜",
    "Unmerged": "═",
    "Deleted": "✖",
    "Dirty": "✗",
    "Clean": "✔︎",
    'Ignored': '☒',
    "Unknown": "?"
}

# 定义函数 s:nerdtreeBookmarks
def NerdtreeBookmarks()
    var bookmarks = systemlist("cut -d' ' -f 2- ~/.NERDTreeBookmarks")
    bookmarks = bookmarks[0:-2] " Slices an empty last line
    return map(bookmarks, (v:val) => {'line': v:val, 'path': v:val})
enddef

def GitModified()
    var files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
enddef


def GitUntracked()
    var files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
enddef

g:startify_lists = [
        { 'type': 'files',     'header': ['   MRU']            },
        { 'type': 'dir',       'header': ['   MRU ' .. getcwd()] },
        { 'type': 'sessions',  'header': ['   Sessions']       },
        { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        { 'type': function('GitModified'),  'header': ['   git modified']},
        { 'type': function('GitUntracked'), 'header': ['   git untracked']},
        { 'type': 'commands',  'header': ['   Commands']       },
        ]
