-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        -- or                            , branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" } },
    })
    use({ "rose-pine/neovim", as = "rose-pine" })
    use({ "catppuccin/nvim", as = "catppuccin" })
    -- nightfox
    use("EdenEast/nightfox.nvim")
    use("folke/tokyonight.nvim")
    use("luisiacc/gruvbox-baby")

    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },    -- Required
            { "williamboman/mason.nvim" },  -- Optional
            { "williamboman/mason-lspconfig.nvim" }, -- Optional

            -- Autocompletion
            { "hrsh7th/nvim-cmp" }, -- Required
            { "hrsh7th/cmp-nvim-lsp" }, -- Required
            { "hrsh7th/cmp-buffer" }, -- Optional
            { "hrsh7th/cmp-path" }, -- Optional
            { "saadparwaiz1/cmp_luasnip" }, -- Optional
            { "hrsh7th/cmp-nvim-lua" }, -- Optional

            -- Snippets
            { "L3MON4D3/LuaSnip" },    -- Required
            { "rafamadriz/friendly-snippets" }, -- Optional
        },
    })

    use({
        "zbirenbaum/copilot.lua",
    })

    use("folke/zen-mode.nvim")
    use("nvim-lua/plenary.nvim")
    use("MunifTanjim/nui.nvim")
    use("dpayne/CodeGPT.nvim")

    use({
        "nvim-neotest/neotest",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-neotest/neotest-python",
        },
    })

    use("folke/neodev.nvim")
    -- Lua
    use({
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end,
    })

    use("mfussenegger/nvim-dap")

    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    })

    use({
        "jose-elias-alvarez/null-ls.nvim",
        requires = {
            "neovim/nvim-lspconfig",
            "nvim-lua/plenary.nvim",
        },
    })

    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    })

    use("airblade/vim-gitgutter")

    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })

    use("justinmk/vim-sneak")
    use("arkav/lualine-lsp-progress")

    use("james1236/backseat.nvim")
    use("windwp/nvim-ts-autotag")

    use({
        "pmizio/typescript-tools.nvim",
        requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
        config = function()
            require("typescript-tools").setup({})
        end,
    })
    use("NvChad/nvim-colorizer.lua")
end)
