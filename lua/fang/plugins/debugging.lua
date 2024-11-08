return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"julianolf/nvim-dap-lldb",
		"leoluz/nvim-dap-go",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dapui = require("dapui")
		local dap = require("dap")

		require("dapui").setup()
		require("dap-go").setup()
		require("dap-lldb").setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<Leader>dj", dap.run_to_cursor, {})

		vim.keymap.set("n", "<F1>", dap.continue, {})
		vim.keymap.set("n", "<F2>", dap.step_into, {})
		vim.keymap.set("n", "<F3>", dap.step_over, {})
		vim.keymap.set("n", "<F4>", dap.step_out, {})
		vim.keymap.set("n", "<F5>", dap.step_back, {})
		vim.keymap.set("n", "<F6>", dap.restart, {})
	end,
}
