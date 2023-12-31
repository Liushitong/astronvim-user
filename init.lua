return {
    colorscheme = "tokyonight-moon",
  
    plugins = {
      {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        config = function()
          require("tokyonight").setup {}
        end,
      },
    },
    lsp = {
      -- customize lsp formatting options
      formatting = {
        -- control auto formatting on save
        format_on_save = {
          enabled = true, -- enable or disable format on save globally
          allow_filetypes = { -- enable format on save for specified filetypes only
            "python",
            "cpp",
            "c",
            -- "go",
          },
          ignore_filetypes = { -- disable format on save for specified filetypes
            -- "python",
          },
        },
        disabled = { -- disable formatting capabilities for the listed language servers
          -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
          -- "lua_ls",
        },
        timeout_ms = 1000, -- default format timeout
        -- filter = function(client) -- fully override the default formatting function
        --   return true
        -- end
      },
      -- enable servers that you already have installed without mason
      servers = {
        "pyright",
        "clangd",
      },
    },
}
