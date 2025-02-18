return-- lazy.nvim
{
  "folke/noice.nvim",
  event = "VeryLazy",
  --弹窗
  opts = {
    -- add any options here
    background_colour = "#000000",
    transparent = true,
    dismiss_on_escape = true, -- 按 Esc 键关闭提示框
    view = "mini",
   },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    },
  require("noice").setup({
  lsp = {
    -- 重写markdown渲染，使得**cmp**和其他插件使用**Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- 需要hrsh7th/nvim-cmp
    },
  },
  messages = {
    view = "mini",
    enter = true,
  },
  notify = {
    view = "mini",
    enter = true,
  },
    -- 自定义命令
  -- 您可以启用预设以简化配置
  presets = {
    bottom_search = true, -- 对搜索使用经典的底部命令行
    command_palette = true, -- 将命令行和popupmenu一起定位
    long_message_to_split = true, -- 长消息发送到新分割窗口
    inc_rename = false, -- 启用inc-rename.nvim的输入对话框
    lsp_doc_border = false, -- 添加边框给悬停文档和签名帮助
  },
})
    
}
