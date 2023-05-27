local plugins = {
  -- Enhancements
  { "airblade/vim-rooter", lazy = false },
  { "ggandor/leap.nvim", event = "BufEnter" },
  { "RRethy/vim-illuminate", event = "BufEnter" },
  { "tpope/vim-speeddating", event = "BufEnter" },
  { "tpope/vim-repeat", event = "BufEnter" },

  -- LSP/treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "lua",
        "vim",

        --git
        "git_rebase",
        "gitcommit",
        "gitignore",

        -- shell
        "bash",

        -- web dev
        "html",
        "css",
        "scss",

        -- programming
        "java",
        "kotlin",
        "python",
        "rust",

        -- misc
        "diff",
        "dockerfile",
        "json",
        "markdown",
        "proto",
        "regex",
        "sql",
        "toml",
        "yaml",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- language server
        "bash-language-server",
        "css-lsp",
        "lua-language-server",
        "html-lsp",
        "java-language-server",
        "kotlin-language-server",
        "pyright",
        "rust-analyzer",

        --DAP
        "debugpy",

        -- Linter
        "jsonlint",
        "ktlint",
        "mypy",
        "ruff",
        "shellcheck",
        "yamllint",

        -- Formatter
        "black",
        "isort",
        "rustfmt",
        "stylua",
      },
    },
  },
}

return plugins
