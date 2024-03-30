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

