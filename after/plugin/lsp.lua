local lsp_zero = require('lsp-zero')

lsp_zero.preset('recommended')

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'eslint',
    'rust_analyzer',
    'lua_ls',
    'pyright',
  },
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  }
})
require('mason-tool-installer').setup({
  ensure_installed = {
    'black',
    'debugpy',
  }
})

lsp_zero.setup_servers({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'lua_ls',
    'pyright',
})
--
-- Fix Undefined global 'vim'
lsp_zero.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})


local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<up>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<down>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  })
})

lsp_zero.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
end)


lsp_zero.setup()

