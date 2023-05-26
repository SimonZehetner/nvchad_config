local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "lua",
        "vim",

        -- shell
        "bash",

        -- programming
        "java",
        "kotlin",
        "python",
        "rust",

        -- misc
        "diff",
        "json",
        "markdown",
        "regex",
        "sql",
        "toml",
        "vim",
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
        "jsonlint",
        "mypy",
        "ruff",
        "lua-language-server",
        "rust-analyzer",
      },
    },
  },
}

return plugins
