return {
	-- amongst your other plugins
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			terminal_mappings = true,
			open_mapping = [[<C-l>]], -- 改为你想要的快捷键
			direction = "float",
			shell = vim.o.shell,
			size = 10,
			start_in_insert = true,
			float_opts = {
				border = "rounded",
				width = 100,
				height = 20,
				shading_factor = 0.9,
				relative = "editor",
			},
		})

		-- 手动设置快捷键
		vim.api.nvim_set_keymap("n", "<C-f>", "<Cmd>ToggleTerm<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<C-j>", "<Cmd>ToggleTerm<CR>", { noremap = true, silent = true })
	end,
}
