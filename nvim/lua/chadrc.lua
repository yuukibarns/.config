local options = {
    base46 = {
        theme = "gruvbox",
        transparency = false,
        hl_add = {
            Conceal = { link = "@function.latex" },
            ["@none.latex"] = { link = "Normal" },
            TreesitterContext = { link = "Normal" },
            TreesitterContextBottom = { undercurl = true, sp = "#458588" },
            StatusLine = { link = "NormalFloat" }
        },
        integrations = {
            "alpha",
            "avante",
            "blink",
            "cmp",
            "leap",
            "lsp",
            "markview",
            "mason",
            "mini-tabline",
            "treesitter",
            "whichkey",
        },
    },
    ui = {
        cmp = {
            style = "default",
        },
        statusline = {
            enabled = false,
            order = { "file", "git", "modified", "%=", "lsp_msg", "diagnostics", "lsp", "cursor" },
            modules = {
                modified = " %h%m%r",
                -- cursor = "%c%V",
                cursor = "%#St_pos_sep#" .. "" .. "%#St_pos_icon# %#St_pos_text# %c%V %p%% ",
            },
        },
        tabufline = {
            enabled = false,
            order = { "treeOffset", "buffers" },
        },
    },
    nvdash = {
        load_on_startup = false,
    },
    lsp = {
        signature = false,
    },
}

return options
