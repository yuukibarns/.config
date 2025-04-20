return {
    -- NvChad
    {
        "nvchad/base46",
        lazy = true,
        build = function()
            require("base46").load_all_highlights()
        end,
    },
    {
        "nvchad/ui",
        -- dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
        config = function()
            require("nvchad")
        end,
    },

    -- starter
    {
        "yuukibarns/alpha-nvim",
        dependencies = {
            "echasnovski/mini.icons",
            "nvim-lua/plenary.nvim",
        },
        config = function()
            local theta = require("alpha.themes.theta")
            theta.header.val = require("alpha.isaac_fortune")
            theta.config.layout = {
                { type = "padding", val = 2 },
                theta.header,
                { type = "padding", val = 3 },
                theta.section_mru,
                { type = "padding", val = 2 },
            }
            require("alpha").setup(theta.config)
        end,
    },

    -- buffer line
    {
        'echasnovski/mini.tabline',
        version = '*',
        opts = {
            show_icons = true,
            format = function(buf_id, label)
                if #label > 15 then
                    label = label:sub(1, 15) .. "…"
                end
                return MiniTabline.default_format(buf_id, label)
            end,
            set_vim_settings = true,
            tabpage_section = 'right',
        },
    },

    -- dead color column
    {
        "Bekaboo/deadcolumn.nvim",
        opts = {
            blending = {
                threshold = 0.5,
                colorcode = '#2e2e2e',
                hlgroup = { 'Normal', 'bg' },
            },
            warning = {
                alpha = 0.4,
                offset = 0,
                colorcode = '#FF0000',
                hlgroup = { 'Error', 'bg' },
            },
        },
    },

    -- icons
    {
        "echasnovski/mini.icons",
        lazy = false,
        opts = {
            lsp = {
                ["function"] = { glyph = "" },
                object = { glyph = "" },
                value = { glyph = "" },
            },
        },
    },

    -- smear cursor
    {
        "sphamba/smear-cursor.nvim",
        opts = {
            smear_between_buffers = true,
            min_horizontal_distance_smear = 3,
            min_vertical_distance_smear = 3,
            scroll_buffer_space = true,
            legacy_computing_symbols_support = true,
            smear_insert_mode = false,
            normal_bg = "none",

            -- faster smear
            -- stiffness = 0.8,       -- 0.6      [0, 1]
            -- trailing_stiffness = 0.5, -- 0.3      [0, 1]
            -- distance_stop_animating = 0.5, -- 0.1      > 0

            -- smooth cursor without smear
            -- stiffness = 0.5,
            -- trailing_stiffness = 0.49,
            -- never_draw_over_target = false,

            -- override cursor color
            cursor_color = "#FFFFFF",
        },
    },
}
