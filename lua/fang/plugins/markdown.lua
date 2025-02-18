return{
    "OXY2DEV/markview.nvim",
    lazy = false,      -- 推荐
    -- ft = "markdown" -- 如果你决定延迟加载

    dependencies = {
        -- 如果你手动安装了解析器，就不需要这个
        -- 或者如果解析器在你的 $RUNTIMEPATH 中
        "nvim-treesitter/nvim-treesitter",

        "nvim-tree/nvim-web-devicons"
    }
}
