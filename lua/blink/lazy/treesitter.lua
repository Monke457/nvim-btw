return {
    "nvim-treesitter/nvim-treesitter",
	"nvim-treesitter/nvim-treesitter-textobjects",
    build = ":TSUpdate",

    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
		  textobjects = {
			  lsp_interop = {
				  enable = true,
				  border = 'none',
				  floating_preview_opts = {},
				  peek_definition_code = {
					  ["<leader>df"] = "@function.outer",
					  ["<leader>dF"] = "@class.outer",
				  },
			  },
		  },
	  })
  end
}
