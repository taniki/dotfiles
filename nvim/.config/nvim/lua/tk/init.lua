require('tk.remap')
require('tk.set')

-- I don't know why `lua/plugin/after/feline.lua` doesn't automatically load up

local ctp_feline = require('catppuccin.groups.integrations.feline')

-- ctp_feline.setup()

require("feline").setup({
    components = ctp_feline.get(),
})

require('feline').winbar.setup()

-- require("notify").setup({
--    background_colour = "#000000",
--})
