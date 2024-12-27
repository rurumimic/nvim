local open_with_trouble = require("trouble.sources.telescope").open

return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "folke/trouble.nvim" },
    opts = {
      defaults = {
        mappings = {
          i = { ["<C-q>"] = open_with_trouble },
          n = { ["<C-q>"] = open_with_trouble },
        },
      },
    },
  },
}
