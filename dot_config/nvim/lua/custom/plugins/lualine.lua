# https://github.com/nvim-lualine/lualine.nvim

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    require('lualine').setup({

      -- options = {
      --   icons_enabled = true,
      --   component_separators = '|',
      --   section_separators = '',
      -- },
      -- sections = {
      --   lualine_x = {
      --     {
      --       color = { fg = "#ff9e64" },
      --     },
      --     {
      --       color = { fg = "#ff9e64" },
      --     },
      --   },
      --   lualine_a = {
      --     {
      --       'buffers',
      --     }
      --   }
      -- }
    })
  end
}
