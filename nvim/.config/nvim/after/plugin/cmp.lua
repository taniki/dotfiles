local cmp = require('cmp')
local luasnip = require('luasnip')
local lspkind = require('lspkind')


local has_words_before = function()
  if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_text(0, line-1, 0, line-1, col, {})[1]:match("^%s*$") == nil
end

cmp.setup({
    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                otter = "[🦦]",
                luasnip = "[snip]",
                nvim_lsp = "[LSP]",
                buffer = "[buf]",
                path = "[path]",
                spell = "[spell]",
                pandoc_references = "[ref]",
                tags = "[tag]",
                treesitter = "[TS]",
                calc = "[calc]",
                latex_symbols = "[tex]",
                emoji = "[emoji]",
            },
        },
    },
    sources = {
        { name = 'otter' },
        { name = "copilot", index = 2 },
        { name = "nvim_lsp", index = 2 },
        { name = "path", group_index = 2 },
        { name = "luasnip", group_index = 2 },
    },
    mapping = {
        ["<Tab>"] = vim.schedule_wrap(function(fallback)
            if cmp.visible() and has_words_before() then
                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
            else
                fallback()
            end
        end),
    },
})
