
" key bindings
lua require('keybinding')

" lua plugins
lua require('plugins')
lua require('plugins/nvim-tree')
lua require('plugins/nvim-treesitter')
lua require('plugins/bufferline')
lua require('plugins/telescope')
lua require('plugins/lualine')
lua require('plugins/toggleterm')
lua require('plugins/indent-blankline')
lua require('plugins/hop')

" vim
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/core/base.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/core/nvim-tree.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/core/coc.vim'

"TODO coc 是否支持 GoImplement 跳转接口实现 OK (gi)
"TODO 文件树与标签页的联动 (定位文件位置) OK (NvimTreeFindFile)
"TODO 模糊文件搜索插件 OK (telescope)
"TODO 全局文件内容搜索插件 OK (telescope) 
"TODO 分屏终端，分屏定义跳转 todo
"TODO Golang 导包仍需要保存触发，手动触发以及其他触发方式，详解coc-go
"TODO git 支持，查看未提交文件列表与修改，merge等
"https://github.com/tpope/vim-fugitive, https://github.com/neoclide/coc-git
"采用VimDiff 解决冲突
"TODO nvimTree 当前行高亮
"TODO lualine 研究下还能显示什么信息

"TODO 代码补全悬浮提示
"TODO coc 集成 status-line https://github.com/neoclide/coc.nvim/wiki/Statusline-integration
"TODO coc-go 与 直接gopls 功能重复了，选一种

" colorscheme
set termguicolors
set background=dark
"colorscheme nord
colorscheme zephyr
"colorscheme tokyonight
"colorscheme gruvbox
