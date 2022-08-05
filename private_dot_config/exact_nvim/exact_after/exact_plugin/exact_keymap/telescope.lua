local Remap = require("citro.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>ps", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })
end)
nnoremap("<Leader>fg", function()
    require('telescope.builtin').live_grep()
end)
nnoremap("<Leader>ff", function()
    require('telescope.builtin').find_files()
end)
