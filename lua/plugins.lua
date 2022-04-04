return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

	-- lsp config
	use 'neovim/nvim-lspconfig'
    -- gruvbox theme
    use {
        'ellisonleao/gruvbox.nvim',
        requires = {'rktjmp/lush.nvim'}
    }
    -- nord theme
    use 'shaunsingh/nord.nvim'
    
    -- zephyr theme
    use 'glepnir/zephyr-nvim'

    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        }
    }


    -- 标签
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    -- 补全
	 use {'neoclide/coc.nvim', branch = 'release'}

	-- 高亮
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

	-- 模糊搜索
	use {
       'nvim-telescope/telescope.nvim',
       requires = { {'nvim-lua/plenary.nvim'} }
    }

	-- 状态线
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

	-- 终端
	use {"akinsho/toggleterm.nvim"}

	-- 缩进线
    use "lukas-reineke/indent-blankline.nvim"

	-- color theme
    use 'folke/tokyonight.nvim'

	-- 单词跳转
	use { 'phaazon/hop.nvim', branch = 'v1' }
	use { 'liuchengxu/vista.vim', branch = 'master' }
	use 'mfussenegger/nvim-dap'
	-- use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
   --  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    -- use 'hrsh7th/cmp-cmdline' -- LSP source for nvim-cmp
    -- use 'hrsh7th/cmp-path' -- LSP source for nvim-cmp
    -- use 'hrsh7th/cmp-buffer' -- LSP source for nvim-cmp
	-- use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    -- use 'L3MON4D3/LuaSnip' -- Snippets plugin
     --use 'windwp/nvim-autopairs' -- Snippets plugin
	 --use 'ray-x/lsp_signature.nvim'
	 -- use 'onsails/lspkind-nvim'
     -- use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
     -- use 'hrsh7th/vim-vsnip' 
	-- use 'hrsh7th/cmp-path'
end)
