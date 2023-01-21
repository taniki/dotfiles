vim.g.mapleader = " "

local wk = require("which-key")

--vim.keymap.set("n", "<leader>ge", vim.cmd.Ex)

wk.register({
    g = {
        name = "[g]o",
        e = { '<cmd>Ex<cr>', 'vim [e]xplorer' },
    },
    s = {
        name = "[s]earch",
        f = { "<cmd>Telescope find_files<cr>", "[f]iles" },
        g = { "<cmd>Telescope git_files<cr>", "[g]it files"},
        r = { "<cmd>Telescope live_grep<cr>", "g[r]ep" },
        n = { "<cmd>Telescope notify<cr>", "[n]otification history"},
        h = { "<cmd>Telescope help_tags<cr>", "[h]elp" },
    }
}, { prefix = '<leader>' })
