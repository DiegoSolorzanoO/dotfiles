local tokyonight = require('tokyonight')

tokyonight.setup({
  style = 'storm',
  transparent = true
})

vim.cmd[[colorscheme tokyonight]]


-- local catppuccin = require('catppuccin')

-- catppuccin.setup({
--   flavour = "macchiato",
--   transparent_background = true,
--   term_colors = false,
--   integrations = {
--     cmp = true,
--     gitsigns = true,
--     telescope = true,
--     treesitter = true
--   }
-- })

-- vim.cmd[[colorscheme catppuccin]]


