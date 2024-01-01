vim.opt.runtimepath:append("~/.config/nvim/parsers")
local M = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate()",
	config = function () 
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "python" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },  
			parser_install_dir = '~/.config/nvim/parsers'
		})
	end,
}
return{	 
	{ 'tpope/vim-vinegar' },
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	M
}

