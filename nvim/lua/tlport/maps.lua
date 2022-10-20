local keymap = vim.keymap

-- Normal mode maps
keymap.set('n', '<C-a>', 'gg<S-v>G')
keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-l>', '<C-w>l')
keymap.set('n', '<leader>sv', ':vsplit<CR><C-w>l')
keymap.set('n', '<leader>sh', ':split<CR><C-W>j')
keymap.set('n', '<leader>do', ':DiffviewFileHistory<CR>') -- Git diff view
keymap.set('n', '<leader>dc', ':DiffviewClose<CR>') -- Git diff view
keymap.set('n', '<leader>ft', ':FloatermNew --autoclose=0 powershell<CR>') -- Open clean Floaterm
keymap.set('n', '<leader>rr', ':FloatermNew --autoclose=0 powershell cargo run<CR>') -- Open clean Floaterm

-- X mode maps
keymap.set('x', '<leader>p', "\"_dP")

-- Insert mode maps
keymap.set('i', 'jk', '<Esc>')
