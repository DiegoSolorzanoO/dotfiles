local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup({
  lightbulb = {
    enable = false
  },
  server_filetype_map = {
    typescript = 'typescript'
  }
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'H', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', '<leader>gf', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', '<leader>gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', '<leader>gd', '<Cmd>Lspsaga goto_definition<CR>', opts)
vim.keymap.set('n', '<leader>ga', '<Cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', '<leader>gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', '<leader>gD', '<Cmd>Lspsaga show_buf_diagnostics<CR>', opts)
