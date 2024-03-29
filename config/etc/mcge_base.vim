vim9script

# ----------font---------------
if has('gui_running')
	set guifont=Fira_Code:h12:cANSI:qDRAFT
endif

# 基本配置
if &compatible
    # 不兼容 vi
    set nocompatible
endif

if has('syntax')
	# syntax enable
	# syntax on
endif

if has('autocmd')
	filetype plugin indent on
endif

if has('multi_byte')
	set encoding=utf-8
	set fileencoding=utf-8
	set fileencodings=ucs-bom,utf-8,gb18030,cp936,latin1
endif

set number          	# 显示行号
set relativenumber  	# 显示相对行号
set smartindent     	# 智能缩进
set autoindent      	# 自动换行缩进
set linebreak       	# 软折行
set noswapfile      	# 禁止生成 swap 文件
set hidden				# 终端隐藏后不结束
set ignorecase			# 忽略大小写
set infercase
set history=500			# 历史命令
set splitbelow			# 在下方分割
set expandtab			# tab 扩展为空格
set tabstop=4
set softtabstop=4		# 连续数量的空格当成一个制表符
set shiftwidth=4	
set smarttab
set shiftround

if has('folding')
	set foldenable
	set foldmethod=syntax	# 基于缩进的折叠
	set foldlevel=99		# 默认打开所有缩进
endif

set nobackup
set nowritebackup
set shortmess+=c
set sessionoptions+=globals
set autoread				# 文件外部修改过重新载入
set autowrite				# 自动写回
set confirm					# 显示确认对话框
set noshowmode
set ttimeout
set timeoutlen=500
set ttimeoutlen=100
set updatetime=100			# 更新时间 100ms
set mouse=n					# 允许 normal 模式使用鼠标,a 是全模式

set winaltkeys=no
set lazyredraw				# 延迟绘制，提升性能

set showmatch
set matchtime=2
# set ffs=unix,doc,mac		# 文件换行符
set clipboard+=unnamedplus	# 与系统共用剪切板

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif | normal! zvzz
endif

# 文件搜索和补全时忽略如下的扩展名
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class
set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
# MacOSX/Linux
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android
