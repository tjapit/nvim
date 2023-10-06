vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    preserve_window_proportions = true,
  }
})

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)

