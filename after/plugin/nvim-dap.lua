local dap = require('dap')
local dapui = require('dapui')

dapui.setup()
dap.listeners.after.event_initialized['dapui_config'] = function()
  dapui.open()
end
dap.listeners.before.event_terminated['dapui_config'] = function()
  dapui.close()
end
dap.listeners.before.event_exited['dapui_config'] = function()
  dapui.close()
end

--remaps
vim.keymap.set("n", "<leader>b", "<cmd>DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<F9>", "<cmd>DapContinue<CR>")
vim.keymap.set("n", "<F5>", "<cmd>DapStepInto<CR>")
vim.keymap.set("n", "<F6>", "<cmd>DapStepOver<CR>")
vim.keymap.set("n", "<F7>", "<cmd>DapStepOut<CR>")
vim.keymap.set("n", "<F12>", "<cmd>DapTerminate<CR>")

--python dap
local debugpy_path = '~/.local/share/nvim/mason/packages/debugpy/venv/bin/python'
require('dap-python').setup(debugpy_path)
