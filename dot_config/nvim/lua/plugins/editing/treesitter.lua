return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	dependencies = {
		{ "windwp/nvim-ts-autotag", opts = {} },
	},
	config = function()
		local parsers = {
			"json",
			"yaml",
			"html",
			"css",
			"markdown",
			"markdown_inline",
			"bash",
			"lua",
			"vim",
			"dockerfile",
			"gitignore",
			"vimdoc",
			"c",
			"python",
			"terraform",
			"java",
			"helm",
			"hcl",
			"regex",
		}

		require("nvim-treesitter").install(parsers)

		local group = vim.api.nvim_create_augroup("treesitter", { clear = true })
		vim.api.nvim_create_autocmd("FileType", {
			group = group,
			pattern = vim.tbl_filter(function(parser)
				return parser ~= "markdown_inline"
			end, parsers),
			callback = function(event)
				-- Parsers install asynchronously and may not be available yet.
				if not pcall(vim.treesitter.start, event.buf) then
					return
				end
				vim.wo.foldmethod = "expr"
				vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
			end,
		})

		vim.api.nvim_create_autocmd("FileType", {
			group = group,
			pattern = { "json", "yaml", "html", "css", "markdown", "bash", "lua", "c", "python", "terraform", "java", "hcl" },
			callback = function(event)
				if not pcall(vim.treesitter.get_parser, event.buf) then
					return
				end
				vim.bo[event.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
