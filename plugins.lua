local plugins = {
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
}

table.insert(plugins, require("custom.modules.colorscheme"))
table.insert(plugins, require("custom.modules.git"))
table.insert(plugins, require("custom.modules.lsp"))
table.insert(plugins, require("custom.modules.ui"))

return plugins
