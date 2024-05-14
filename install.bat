@echo off
REM setlocal enabledelayedexpansion

REM 文件存在会覆盖文件内容
set WRITE_VIMRC_FILE=%USERPROFILE%\vimfiles\vimrc

echo The path to file written is [ %WRITE_VIMRC_FILE% ]

REM 获取当前日期
set dateStamp=%date:~0,4%-%date:~5,2%-%date:~8,2%

REM 获取源文件的文件名(不包括扩展名)
for %%F in ("%WRITE_VIMRC_FILE%") do (
    set fileName=%%~nF
    set fileExtension=%%~xF
    set sourceFolder=%%~dpF
)

set "distFile=%sourceFolder%%fileName%_%dateStamp%%fileExtension%"

if exist %WRITE_VIMRC_FILE% (
    REM 复制文件并重命名
    copy ^/y "%WRITE_VIMRC_FILE%" "%distFile%"
    
    echo The file is copied as [ %distFile% ]  
)

REM 覆盖文件之前内容
echo vim9script > %WRITE_VIMRC_FILE%
echo. >> %WRITE_VIMRC_FILE%
call :WriteToFilePath "def SetPackPath(custom_dir: string)" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "    var packpath_exist = index(split(packpath, ','), custom_dir) != -1" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "   if !packpath_exist" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "       execute 'set packpath+=' .. custom_dir" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "   endif" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "enddef" "%WRITE_VIMRC_FILE%"
echo. >> %WRITE_VIMRC_FILE%
call :WriteToFilePath "# 自定义一些全局变量" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "g:mcge_custom_project = "F:/2024/projects^"" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "g:mcge_custom_workspace = "F:/workspace^"" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "g:mcge_custom_fzf_dir = "D:/bin/fzf^"" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "g:mcge_custom_preview_bash = "D:/bin/Git/bin/bash.exe^"" "%WRITE_VIMRC_FILE%"
echo. >> %WRITE_VIMRC_FILE%
call :WriteToFilePath "# 自定义vim配置文件路径" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "g:mcge_customvimrcdir = "D:/config/mcge-vimrc^"" "%WRITE_VIMRC_FILE%"
echo. >> %WRITE_VIMRC_FILE%
call :WriteToFilePath "if has("unix^")" "%WRITE_VIMRC_FILE%"
echo. >> %WRITE_VIMRC_FILE%
call :WriteToFilePath "   g:mcge_customvimrcdir = "~/mcge-vimrc^"" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "   g:mcge_custom_project = "~/projects^"" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "   g:mcge_custom_workspace = "~/workspace^"" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "   g:mcge_custom_fzf_dir = "~/.fzf^"" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "   g:mcge_custom_preview_bash = "/usr/bin/bash^"" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "endif" "%WRITE_VIMRC_FILE%"
echo. >> %WRITE_VIMRC_FILE%
call :WriteToFilePath "SetPackPath(g:mcge_customvimrcdir)" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "var vim_pos_x = 1000" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "var vim_pos_y = 10" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "var vim_width = 50" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "var vim_height = 90" "%WRITE_VIMRC_FILE%"
echo. >> %WRITE_VIMRC_FILE%
call :WriteToFilePath "execute 'set lines=' .. vim_width" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "execute 'set columns=' .. vim_height" "%WRITE_VIMRC_FILE%"
call :WriteToFilePath "execute '^$"winpos {vim_pos_x} {vim_pos_y}^"" "%WRITE_VIMRC_FILE%"
echo. >> %WRITE_VIMRC_FILE%
call :WriteToFilePath "execute 'source ' .. fnameescape(g:mcge_customvimrcdir .. '/init.vim')" "%WRITE_VIMRC_FILE%"
goto :EOF

REM 定义函数: 写入内容到文件
:WriteToFilePath
echo %~1 >> %~2
EXIT /B 0

