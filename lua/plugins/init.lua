return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
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
    "nvimtools/none-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  --
  {
   	"williamboman/mason.nvim",
   	opts = {
   		ensure_installed = {
   			"lua-language-server", "stylua",
   			"html-lsp", "css-lsp" , "prettier",
        "mypy", "ruff-lsp", "black", "pyright"
   		},
   	},
  },
  --
  {
   	"nvim-treesitter/nvim-treesitter",

      config = function(_, opts)
         dofile(vim.g.base46_cache .. "syntax")
      require("nvim-treesitter.configs").setup(opts)
      end,
     	opts = {
   		ensure_installed = {
   			"vim", "lua", "vimdoc",
        "html", "css", "php"
   		},
      {
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gi", -- set to `false` to disable one of the mappings
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
          },
        },
      },
    },
  },
}
