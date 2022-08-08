-- vim.g.citro_colorscheme = "tokyonight"
vim.g.citro_colorscheme = "gruvbox"

local function SetupColors()
    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.g.gruvbox_contrast_dark = 'hard'
    vim.g.gruvbox_invert_selection = '0'
    vim.opt.background = "dark"


    vim.api.nvim_exec([[
        if !exists('g:airline_symbols')
            let g:airline_symbols = {}
        endif

        " unicode symbols
        let g:airline_left_sep = '»'
        let g:airline_left_sep = '▶'
        let g:airline_right_sep = '«'
        let g:airline_right_sep = '◀'
        let g:airline_symbols.crypt = '🔒'
        let g:airline_symbols.linenr = '☰'
        let g:airline_symbols.linenr = '␊'
        let g:airline_symbols.linenr = '␤'
        let g:airline_symbols.linenr = '¶'
        let g:airline_symbols.maxlinenr = ''
        let g:airline_symbols.maxlinenr = '㏑'
        let g:airline_symbols.branch = '⎇'
        let g:airline_symbols.paste = 'ρ'
        let g:airline_symbols.paste = 'Þ'
        let g:airline_symbols.paste = '∥'
        let g:airline_symbols.spell = 'Ꞩ'
        let g:airline_symbols.notexists = 'Ɇ'
        let g:airline_symbols.whitespace = 'Ξ'

        " powerline symbols
        let g:airline_left_sep = ''
        let g:airline_left_alt_sep = ''
        let g:airline_right_sep = ''
        let g:airline_right_alt_sep = ''
        let g:airline_symbols.branch = ''
        let g:airline_symbols.colnr = ' ℅:'
        let g:airline_symbols.readonly = ''
        let g:airline_symbols.linenr = ' :'
        let g:airline_symbols.maxlinenr = '☰ '
        let g:airline_symbols.dirty='⚡'

        let g:airline_powerline_fonts = 1
    ]], true)


    vim.cmd("colorscheme " .. vim.g.citro_colorscheme)
    vim.cmd("AirlineTheme " .. vim.g.citro_colorscheme)
end

SetupColors()
