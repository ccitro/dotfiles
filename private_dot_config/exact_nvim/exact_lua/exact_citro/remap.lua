vim.g.mapleader = " "

-- disable Arrow keys in Normal mode
vim.keymap.set("n", "<Up>", "<nop>")
vim.keymap.set("n", "<Down>", "<nop>")
vim.keymap.set("n", "<Left>", "<nop>")
vim.keymap.set("n", "<Right>", "<nop>")

-- disable Arrow keys in Insert mode
vim.keymap.set("i", "<Up>", "<nop>")
vim.keymap.set("i", "<Down>", "<nop>")
vim.keymap.set("i", "<Left>", "<nop>")
vim.keymap.set("i", "<Right>", "<nop>")

-- leader p pastes over selection without clobbering vim clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

-- leader y/Y to yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- misc shortcuts
vim.keymap.set("n", '<leader>fu', function() vim.lsp.buf.format() end)
vim.keymap.set("n", '<leader>pl', "<cmd>!cd %:h/..;~/code/app01_screens/build/lint-app.sh<CR>")
vim.keymap.set("n", '<leader>pf', "<cmd>!~/code/app01_screens/build/lint-file.sh %:p --level 4<CR>")
