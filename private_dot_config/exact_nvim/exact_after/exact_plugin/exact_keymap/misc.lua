local Remap = require("citro.keymap")
local nnoremap = Remap.nnoremap

nnoremap('<leader>fu', vim.lsp.buf.formatting)
nnoremap('<leader>pl', "<cmd>!cd %:h/..;~/code/app01_screens/build/lint-app.sh<CR>")
nnoremap('<leader>pf', "<cmd>!~/code/app01_screens/build/lint-file.sh %:p --level 4<CR>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

