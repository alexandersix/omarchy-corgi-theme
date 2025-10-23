return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#322D18", -- Default background
                base01 = "#676249", -- Lighter background (status bars)
                base02 = "#322D18", -- Selection background
                base03 = "#676249", -- Comments, invisibles
                base04 = "#F9F7F2", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#F9F7F2", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#c58363", -- Variables, errors, red
                base09 = "#e1b7a3", -- Integers, constants, orange
                base0A = "#d6d770", -- Classes, types, yellow
                base0B = "#BEC0A9", -- Strings, green
                base0C = "#d9dc99", -- Support, regex, cyan
                base0D = "#D4B79C", -- Functions, keywords, blue
                base0E = "#CDB58D", -- Keywords, storage, magenta
                base0F = "#edeeb5", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
