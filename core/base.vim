set rnu
set nu
set ts=4
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set cursorline

set termguicolors
set background=dark
colorscheme zephyr

" 暂时不改
"let mapleader = "\<space>"
inoremap jk <ESC>
inoremap <ESC> <C-\><C-n>

autocmd InsertLeave * :silent !fcitx5-remote -c " 退出插入模式时禁用输入法
autocmd BufCreate *  :silent !fcitx5-remote -c " 创建 Buf 时禁用输入法
autocmd BufEnter *  :silent !fcitx5-remote -c " 进入 Buf 时禁用输入法
autocmd BufLeave *  :silent !fcitx5-remote -c " 离开 Buf 时禁用输入法
