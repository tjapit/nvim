local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
require('telescope').setup({
  defaults = {
    hidden = true,
    file_ignore_patterns = {
      "node_modules", "build", "dist", "yarn.lock", "venv", "vscode"
    }
  },
  pickers = {
    find_files = {
      hidden = true,
      find_command = { "rg", "--files", "--hidden", "--no-ignore", "--glob", "!**/.git/*" }
    }
  }
})
