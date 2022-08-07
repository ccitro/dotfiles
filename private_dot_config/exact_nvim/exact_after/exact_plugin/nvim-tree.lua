local Remap = require("citro.keymap")
local nnoremap = Remap.nnoremap

require("nvim-web-devicons")
require("nvim-tree").setup({
    hijack_netrw = false,
    view = {
        side = "left",
    },
    update_focused_file = {
        enable = true,
    },
})

-- @future make nvim-tree close itself if i quit the last open buffer
-- this sorta works, but breaks telescope
-- https://github.com/kyazdani42/nvim-tree.lua/issues/1368#issuecomment-1195570841

nnoremap("<leader>t", function()
    require"nvim-tree".toggle(false, true)
end)

