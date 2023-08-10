return {
  {
    'ojroques/nvim-osc52',
    lazy = false,
    keys = {
      -- { '<leader>c', '"+y' },
      -- { '<leader>cc', '"+yy' },
      { '<leader>c', function ()
        require('osc52').copy_visual()
      end, mode = 'v' },
   },
   opts = {
      slient = true,
      trim = true,
    }
  }
}
