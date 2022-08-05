local Remap = require("citro.keymap")
local nnoremap = Remap.nnoremap

nnoremap('<leader>fu', vim.lsp.buf.formatting)

