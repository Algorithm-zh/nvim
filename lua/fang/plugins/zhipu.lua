return {
	"Kurama622/llm.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
	cmd = { "LLMSesionToggle", "LLMSelectedTextHandler" },
	config = function()
		require("llm").setup({
			max_tokens = 512,
			url = "https://open.bigmodel.cn/api/paas/v4/chat/completions",
			model = "glm-4-flash",
			api_key = os.getenv("LLM_KEY"), -- 从环境变量中获取 API 密钥
			prefix = {
				user = { text = "😃 ", hl = "Title" },
				assistant = { text = "⚡ ", hl = "Added" },
			},
			save_session = true,
			max_history = 15,

      -- stylua: ignore
      keys = {
        -- The keyboard mapping for the input window.
        ["Input:Submit"]      = { mode = "n", key = "<cr>" },
        ["Input:Cancel"]      = { mode = "n", key = "<C-c>" },
        ["Input:Resend"]      = { mode = "n", key = "<C-r>" },

        --vc only works when "save_session = true"
        ["Input:HistoryNext"] = { mode = "n", key = "<C-j>" },
        ["Input:HistoryPrev"] = { mode = "n", key = "<C-k>" },

        -- The keyboard mapping for the output window in "split" style.
        ["Output:Ask"]        = { mode = "n", key = "i" },
        ["Output:Cancel"]     = { mode = "n", key = "<C-c>" },
        ["Output:Resend"]     = { mode = "n", key = "<C-r>" },

        -- The keyboard mapping for the output and input windows in "float" style.
        ["Session:Toggle"]    = { mode = "n", key = "<leader>ac" },
        ["Session:Close"]     = { mode = "n", key = "<esc>" },
      },
		})
	end,
	keys = {
		{ "<leader>ac", mode = "n", "<cmd>LLMSessionToggle<cr>" },
		{ "<leader>ae", mode = "v", "<cmd>LLMSelectedTextHandler 给这段代码加注释<cr>" },
		{ "<leader>t", mode = "x", "<cmd>LLMSelectedTextHandler 英译汉<cr>" },
	},
}
