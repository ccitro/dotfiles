local Remap = require("citro.keymap")
local nnoremap = Remap.nnoremap

nnoremap('<leader>fu', vim.lsp.buf.formatting)
nnoremap('<leader>pl', "<cmd>!cd %:h/..;~/code/app01_screens/build/lint-app.sh<CR>")
nnoremap('<leader>pf', "<cmd>!~/code/app01_screens/build/lint-file.sh %:p --level 4<CR>")
