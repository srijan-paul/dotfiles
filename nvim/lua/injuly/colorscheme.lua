require('rose-pine').setup({
    --- @usage 'auto'|'main'|'moon'|'dawn'
    variant = 'main',
    --- @usage 'main'|'moon'|'dawn'
    dark_variant = 'main',
    bold_vert_split = false,
    dim_nc_background = false,
    disable_background = false,
    disable_float_background = false,
    disable_italics = true,
    --- @usage string hex value or named color from rosepinetheme.com/palette
    groups = {
        background = 'base',
        background_nc = '_experimental_nc',
        panel = 'surface',
        panel_nc = 'base',
        border = 'highlight_med',
        comment = 'muted',
        link = 'iris',
        punctuation = 'subtle',
        error = 'love',
        hint = 'iris',
        info = 'foam',
        warn = 'gold',
        headings = {
            h1 = 'iris',
            h2 = 'foam',
            h3 = 'rose',
            h4 = 'gold',
            h5 = 'pine',
            h6 = 'foam',
        }
        -- or set all headings at once
        -- headings = 'subtle'
    },
    -- Change specific vim highlight groups
    -- https://github.com/rose-pine/neovim/wiki/Recipes
    highlight_groups = {
        ColorColumn = { bg = 'rose' },
        -- Blend colours against the "base" background
        CursorLine = { bg = 'foam', blend = 10 },
        StatusLine = { fg = 'love', bg = 'love', blend = 10 },
    }
})


-- local function is_macos()
--     return vim.loop.os_uname().sysname == "Darwin"
-- end
--
-- --- Check if macOS is in dark mode
-- local function mac_is_dark()
--     if not is_macos() then
--         return false
--     end
--     local handle = io.popen('defaults read -g AppleInterfaceStyle 2>/dev/null')
--     local result = handle:read("*a")
--     handle:close()
--     return result:match("Dark") ~= nil
-- end

-- local is_mac = is_macos()
-- if is_mac and mac_is_dark() then
    vim.o.background = 'dark'
    vim.cmd.colorscheme('rose-pine')
-- elseif not is_mac then
--     vim.o.background = 'dark'
-- else
-- vim.o.background = 'light'
-- vim.cmd.colorscheme('zenbones')
-- end
