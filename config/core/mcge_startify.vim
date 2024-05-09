vim9script

# 自定义Startify的Header和Footer
g:startify_custom_header = [
 ' __  __            __ _',
'|  \/  |   __     / _` |   ___',  
'| |\/| |  / _|    \__, |  / -_)',  
'|_|__|_|  \__|_   |___/   \___|',  
'_|"""""|_|"""""|_|"""""|_|"""""|',
'"`-0-0-`"`-0-0-`"`-0-0-`"`-0-0-`',
]

# 起始页显示的列表长度
g:startify_files_number = 10
# 自动加载session
g:startify_session_autoload = 1
# 设置缩略图
g:startify_fortune_use_unicode = 1

# 设置 Startify 显示的文件列表
g:startify_lists = [
    { 'type': 'files', 'header': ['   Recent Files'] },
    { 'type': 'dir', 'header': ['   Project Directory'] },
    { 'type': 'bookmarks', 'header': ['   Bookmarks'] },
    ]

# 设置 Startify 书签
g:startify_bookmarks = [
    { 'c': 'D:/config/mcge-vimrc/init.vim' },
    { 'p': '~/Documents' },
    { 'w': '~/workspace' },
    ]
# 过滤列表
g:startify_skiplist = [
    '^/tmp',
]

# NERDTree bookmarks单独显示

def SomeCheck()
    if filereadable(expand('%'))
        echo "SpecificFile exists"
    else
        autocmd VimEnter * Startify
    endif
enddef

SomeCheck()

