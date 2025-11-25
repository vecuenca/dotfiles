return {
  -- {
  --   "neanias/everforest-nvim",
  --   version = false,
  --   lazy = false,
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   -- Optional; default configuration will be used if setup isn't called.
  --   config = function()
  --     require("everforest").setup({
  --       background = "hard", -- or "medium" or "soft"
  --       transparent_background_level = 2, -- enable transparency
  --     })
  --     vim.opt.background = "light"
  --   end,
  -- },
  -- {
  --   "zenbones-theme/zenbones.nvim",
  --   -- Optionally install Lush. Allows for more configuration or extending the colorscheme
  --   -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
  --   -- In Vim, compat mode is turned on as Lush only works in Neovim.
  --   dependencies = "rktjmp/lush.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   -- you can set set configuration options here
  --   config = function()
  --     -- vim.g.zenbones_darken_comments = 45
  --     vim.g.zenbones_transparent_background = true
  --     -- vim.cmd.colorscheme("zenbones")
  --   end,
  -- },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000, -- load first
    name = "catppuccin",
    -- you can do it like this with a config function
    config = function()
      require("catppuccin").setup({
        -- configurations
        flavour = "frappe", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "frappe",
        },
        transparent_background = true,
      })
      vim.cmd.colorscheme("catppuccin")
      vim.api.nvim_set_hl(0, "LineNr", { fg = "#a5adce", bold = true })
    end,
  },
  -- {
  --   "dgox16/oldworld.nvim",
  --   lazy = false,
  --   priority = 10001,
  -- },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     -- colorscheme = "zenbones",
  --
  --     -- colorscheme = "everforest",
  --     colorscheme = "catppuccin",
  --     -- colorscheme = "oldworld",
  --   },
  -- },
}
