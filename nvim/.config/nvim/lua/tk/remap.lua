vim.g.mapleader = " "

local wk = require("which-key")

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
        d = { "<cmd>Telescope diagnostics<cr>", "[d]iagnostics" },
        n = { "<cmd>Telescope notify<cr>", "[n]otification history"},
        h = { "<cmd>Telescope help_tags<cr>", "[h]elp" },
    },
    m = {
        name = "[m]ode",
        z = { "<cmd>ZenMode<cr>", "[z]en" },
        i = { "<cmd>set list<cr>", "show [i]nvisible" },
        ii ={ "<cmd>set nolist<cr>", "hide [i]nvis[i]ble" }
    },
    c = {
        name = "[c]opilot",
        p = { "<cmd>Copilot panel<cr>", "[p]anel" },
    }
}, { prefix = '<leader>' })

wk.register({
    E = { ":m '>+1<CR>gv=gv", "move selection down" },
    I = { ":m '<-2<CR>gv=gv", "move selection up" }
}, {
    mode = "v"
})
