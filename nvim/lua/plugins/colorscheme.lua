return {
  { "catppuccin/nvim", name = "catppuccin", lazy = false, opts = { flavour = "macchiato" } },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      notify = false,
      mini = {
        enabled = true,
        indentscope_color = "",
      },
    }
  },
  {
    "xiyaowong/transparent.nvim", "xiyaowong/transparent.nvim",
  },
}
