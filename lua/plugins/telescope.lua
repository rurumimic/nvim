local open_with_trouble = require("trouble.sources.telescope").open

return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "folke/trouble.nvim" },
    opts = {
      defaults = {
        mappings = {
          i = { ["<C-t>"] = open_with_trouble },
          n = { ["<C-t>"] = open_with_trouble },
        },
      },
    },
  },
}
