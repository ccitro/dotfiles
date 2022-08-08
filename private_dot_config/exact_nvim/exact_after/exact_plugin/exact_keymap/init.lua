local Remap = require("citro.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
nnoremap('<leader>fu', vim.lsp.buf.formatting)
nnoremap('<leader>pl', "<cmd>!cd %:h/..;~/code/app01_screens/build/lint-app.sh<CR>")
