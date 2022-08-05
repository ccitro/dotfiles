local Remap = require("citro.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
nnoremap('<leader>fu', vim.lsp.buf.formatting)

