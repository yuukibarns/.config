return {
    -- filesype plugin for markdown
    {
        "jzr/markdown.nvim",
        lazy = false,
        ft = { "markdown", "tex" },

        config = function()
            require("markdown").setup({
                conceals = {
                    enabled = {
                        "amssymb",
                        "core",
                        "delim",
                        "font",
                        "greek",
                        "leftright",
                        "math",
                        "script",
                    },
                },
            })
        end,
    },

    -- Faster LuaLS setup for Neovim
    { "folke/lazydev.nvim", ft = "lua", config = true },

    {
        "yuukibarns/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        -- download the pre-built binary
        -- build = function()
        --     require("lazy").load({ plugins = { "markdown-preview.nvim" } })
        --     vim.fn["mkdp#util#install"]()
        -- end,
        build = "cd app && yarn install",
        keys = {
            {
                "<leader>cp",
                ft = "markdown",
                "<cmd>MarkdownPreviewToggle<cr>",
                desc = "Markdown Preview",
            },
        },
    },

    -- {
    --     "jannis-baum/vivify.vim",
    --     lazy = false,
    --     cmd = { "Vivify" },
    --     keys = {
    --         {
    --             "<leader>cp",
    --             ft = "markdown",
    --             "<cmd>Vivify<cr>",
    --             desc = "Vivify Preview",
    --         },
    --     },
    -- },
    --
    -- {
    --     'brianhuster/live-preview.nvim',
    --     dependencies = { 'ibhagwan/fzf-lua' },
    --     opts = {},
    -- },

    -- markdown preview
    -- {
    --     "yuukibarns/peek.nvim",
    --     ft = { "markdown" },
    --     cmd = { "PeekOpen", "PeekClose" },
    --     build = "deno task --quiet build:fast",
    --     keys = {
    --         {
    --             "<leader>cpp",
    --             ft = "markdown",
    --             "<cmd>PeekOpen<cr>",
    --         }
    --     },
    --     config = function()
    --         require("peek").setup({
    --             app = "browser",
    --             theme = "light",
    --         })
    --         vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
    --         vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    --     end,
    -- },
}
