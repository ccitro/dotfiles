local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Disable Arrow keys in Normal mode
map("n", "<Up>", "<nop>")
map("n", "<Down>", "<nop>")
map("n", "<Left>", "<nop>")
map("n", "<Right>", "<nop>")

-- Disable Arrow keys in Insert mode
map("i", "<Up>", "<nop>")
map("i", "<Down>", "<nop>")
map("i", "<Left>", "<nop>")
map("i", "<Right>", "<nop>")

