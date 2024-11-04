return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "rust",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },

  {
    "mrcjkb/rustaceanvim",
    ft = "rust",
  },

  {
    "tpope/vim-surround",
    lazy = false,
  },

  {
    "tommcdo/vim-exchange",
    lazy = false,
  },

  { "mg979/vim-visual-multi" },

  { "inkarkat/vim-ReplaceWithRegister" },

  { "mhinz/vim-signify" },

  {
    "smoka7/hop.nvim",
    version = "*",
    lazy = false,
    opts = {
      keys = "etovxqpdygfblzhckisuran",
    },
    config = function()
      require("hop").setup {}
    end,
  },

  {
    "nvim-pack/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
}
