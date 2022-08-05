local autoCwd = vim.api.nvim_create_augroup("AutoCwd", { clear = true })
vim.api.nvim_create_autocmd("VimEnter", {
    command = "cd $PWD",
    group = autoCwd,
})

