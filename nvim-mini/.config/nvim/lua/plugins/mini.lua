return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.basics').setup()
    require('mini.starter').setup()
    require('mini.statusline').setup()
    require('mini.git').setup()
  end,
}
