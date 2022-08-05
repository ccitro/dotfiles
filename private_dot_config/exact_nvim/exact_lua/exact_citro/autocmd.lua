-- automatically set the cwd to whatever dir the nvim command was launched with
local autoCwd = vim.api.nvim_create_augroup("AutoCwd", { clear = true })
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.api.nvim_command("lcd %:p:h")
    end,
    group = autoCwd,
})

