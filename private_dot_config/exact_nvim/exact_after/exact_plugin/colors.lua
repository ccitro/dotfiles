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
        let g:airline_left_sep = 'Β»'
        let g:airline_left_sep = 'βΆ'
        let g:airline_right_sep = 'Β«'
        let g:airline_right_sep = 'β'
        let g:airline_symbols.crypt = 'π'
        let g:airline_symbols.linenr = 'β°'
        let g:airline_symbols.linenr = 'β'
        let g:airline_symbols.linenr = 'β€'
        let g:airline_symbols.linenr = 'ΒΆ'
        let g:airline_symbols.maxlinenr = ''
        let g:airline_symbols.maxlinenr = 'γ'
        let g:airline_symbols.branch = 'β'
        let g:airline_symbols.paste = 'Ο'
        let g:airline_symbols.paste = 'Γ'
        let g:airline_symbols.paste = 'β₯'
        let g:airline_symbols.spell = 'κ¨'
        let g:airline_symbols.notexists = 'Ι'
        let g:airline_symbols.whitespace = 'Ξ'

        " powerline symbols
        let g:airline_left_sep = 'ξ°'
        let g:airline_left_alt_sep = 'ξ±'
        let g:airline_right_sep = 'ξ²'
        let g:airline_right_alt_sep = 'ξ³'
        let g:airline_symbols.branch = 'ξ '
        let g:airline_symbols.colnr = ' β:'
        let g:airline_symbols.readonly = 'ξ’'
        let g:airline_symbols.linenr = ' ξ‘:'
        let g:airline_symbols.maxlinenr = 'β° '
        let g:airline_symbols.dirty='β‘'

        let g:airline_powerline_fonts = 1
    ]], true)


    vim.cmd("colorscheme " .. vim.g.citro_colorscheme)
    vim.cmd("AirlineTheme " .. vim.g.citro_colorscheme)
end

SetupColors()
