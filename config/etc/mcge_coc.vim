vim9script
# 配置coc配置目录
g:coc_config_home = g:mcge_customvimrcdir .. "/config"
# 配置coc安装extensions位置
g:coc_data_home = g:mcge_customvimrcdir .. "/coc-data"

# 安装的插件

g:coc_global_extensions = [
    "coc-json", 
    "coc-explorer",
    "coc-pairs",
    "coc-toml",
    "coc-vimlsp",
    "coc-tsserver",
    "coc-rust-analyzer",
    "coc-clangd",
    "coc-pyright",
    "coc-markdownlint",
    "coc-markdown-preview-enhanced",
    "coc-webview",
    "coc-eslint",
    "coc-prettier",
\]

