-- automatically set the cwd to whatever dir the nvim command was launched with
local autoCwd = vim.api.nvim_create_augroup("AutoCwd", { clear = true })
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.api.nvim_command("lcd %:p:h")
    end,
    group = autoCwd,
})

local eslintFmt = vim.api.nvim_create_augroup("EslintFmt", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.tsx", "*.ts", "*.js", "*.jsx" },
    callback = function()
        vim.api.nvim_command("EslintFixAll")
    end,
    group = eslintFmt
})
