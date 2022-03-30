local map = vim.api.nvim_set_keymap

local opt = {
  noremap = true,
  silent = true
}

-- nvim-tree ---
map("n","<C-m>", ":NvimTreeToggle<CR>", opt)
map("n","<leader>r", ":NvimTreeRefresh<CR>", opt)
map("n","<leader>n", ":NvimTreeFindFile<CR>", opt)
-- More available functions:
-- NvimTreeOpen
-- NvimTreeClose
-- NvimTreeFocus
-- NvimTreeFindFileToggle
-- NvimTreeResize
-- NvimTreeCollapse
-- NvimTreeCollapseKeepBuffers

-- bufferline ---
map("n", "<A-,>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<A-.>", ":BufferLineCycleNext<CR>", opt)
map("n", "<A-c>", ":BufferLinePickClose<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)
map("n", "<leader>bp", ":BufferLinePick<CR>", opt)

-- telescope ---
map("n", "<leader>ff", ":Telescope find_files<CR>", opt)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opt)
map("n", "<leader>fb", ":Telescope buffers<CR>", opt)
map("n", "<leader>fh", ":Telescope help_tags<CR>", opt)

-- coc-go ---
map("n", "<C-A-l>", ":CocCommand editor.action.formatDocument<CR>", opt) -- 格式化代码

-- TODO 导包为什么有多个的时候不能选择
map("n", "<A-Enter>", ":CocCommand editor.action.organizeImport<CR>", opt) -- 导包
map("n", "<leader>at", ":CocCommand go.tags.add.prompt<CR>", opt) --添加结构体Tag


--hop
---- place this in one of your configuration file(s)
vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
vim.api.nvim_set_keymap('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
vim.api.nvim_set_keymap('n', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('o', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('n', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('o', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>gc', ":HopChar1<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>gw', ":HopWord<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>gl', ":HopLine<CR>", {})
