local autotag = require('nvim-ts-autotag')
local autopairs = require('nvim-autopairs')

autotag.setup({})
autopairs.setup({
    disable_filetype = { "TelescopePrompt", "vim" }
})
