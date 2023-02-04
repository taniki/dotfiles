require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    integrations = {
        cmp = true,
        gitsigns = true,
        markdown = true,
        mason = true,
        noice = true,
        notify = true,
        telescope = true,
        treesitter = true,
        which_key = true,
    },
})

vim.cmd.colorscheme "catppuccin"
