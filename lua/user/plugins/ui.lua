return {
    {
        'rebelot/kanagawa.nvim',
        priority = 1000,
        lazy = false,
        opts = {
            colors = {
                theme = {
                    all = {
                        ui = {
                            bg_gutter = "none"
                        }
                    }
                }
            }
        },
        config = function(_, opts)
            require('kanagawa').setup(opts)
            vim.cmd.colorscheme 'kanagawa-dragon'
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        opts = {
            options = {
                icons_enabled = true,
                theme = 'kanagawa',
                component_separators = '|',
                section_separators = '',
            },
        },
    },
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        opts = {},
    }
}
