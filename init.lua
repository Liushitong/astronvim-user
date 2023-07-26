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
  }