local prettier = require('prettier')

prettier.setup({
  bin = 'prettier',
  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "html",
    "yaml",
    "markdown"
  }
})

--vim.api.nvim_create_autocmd("BufWritePre", {
--  pattern = '*',
--  command = "Prettier"
--})
