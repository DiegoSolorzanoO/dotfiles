require('nvim-treesitter.install').compilers = { "clang" }

local treesitter = require('nvim-treesitter.configs')

treesitter.setup({
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        "tsx",
        "toml",
        "json",
        "yaml",
        "css",
        "html",
        "rust",
        "lua"
    },
    autotag = {
        enable = true
    }
})

local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
