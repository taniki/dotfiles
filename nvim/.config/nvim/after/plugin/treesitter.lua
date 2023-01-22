require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "help", "python", "markdown", "markdown_inline", "javascript", "pug" },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
