local function setDefaultPrettierOptions()
  vim.g['prettier#exec_cmd_path'] = '/Users/timothy.timothy/.nvm/versions/node/v18.16.0/bin/prettier'
  vim.g["prettier#config#options"] = {
    formatOnSave = true,
    printWidth = 80,
    tabWidth = 2,
    useTabs = false,
    singleQuote = true,
    jsxSingleQuote = false,
    trailingComma = "es5",
    bracketSpacing = true,
    semi = true,
    arrowParens = true,
    -- Add more Prettier options as needed
  }
end

setDefaultPrettierOptions()


--prettier.setup({
--  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
--  filetypes = {
--    "css",
--    "graphql",
--    "html",
--    "javascript",
--    "javascriptreact",
--    "json",
--    "less",
--    "markdown",
--    "scss",
--    "typescript",
--    "typescriptreact",
--    "yaml",
--  },
--  cli_options = {
--    format_on_save = true,
--    arrow_parens = "always",
--    bracket_spacing = true,
--    bracket_same_line = false,
--    embedded_language_formatting = "auto",
--    -- end_of_line = "crlf",
--    html_whitespace_sensitivity = "css",
--    -- jsx_bracket_same_line = false,
--    jsx_single_quote = false,
--    print_width = 80,
--    prose_wrap = "preserve",
--    quote_props = "as-needed",
--    semi = true,
--    -- single_attribute_per_line = false,
--    single_quote = true,
--    tab_width = 2,
--    trailing_comma = "es5",
--    use_tabs = false,
--    -- vue_indent_script_and_style = false,
--  },
--})

