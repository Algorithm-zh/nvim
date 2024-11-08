return {
	{
		"sakhnik/nvim-gdb",
		lazy = false,
		config = function()
			vim.g.nvimgdb_use_cmake_to_find_executables = 1
			--关闭nvimgdb
			--vim.g:loaded_nvimgdb = 1
		end,
	},
}
