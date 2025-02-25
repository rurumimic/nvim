return {
  {
    "stevearc/aerial.nvim",
    lazy = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("aerial").setup {
        -- on_attach = function(bufnr)
        --   -- Jump forwards/backwards with '{' and '}'
        --   vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        --   vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
        -- end,
      }
    end,
  },
}
