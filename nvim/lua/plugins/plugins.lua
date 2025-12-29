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
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
      -- vim.g.zenbones_darken_comments = 45
      vim.g.zenbones_transparent_background = true
      -- vim.cmd.colorscheme("zenbones")
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "moon", -- auto, main, moon, or dawn
        dark_variant = "moon", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        styles = {
          bold = true,
          italic = false,
          transparency = true,
        },

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          headings = {
            h1 = "iris",
            h2 = "foam",
            h3 = "rose",
            h4 = "gold",
            h5 = "pine",
            h6 = "foam",
          },
        },

        highlight_groups = {
          -- Customize line numbers
          LineNr = { fg = "muted", bold = true },
          CursorLineNr = { fg = "iris", bold = true },

          -- Make telescope transparent
          TelescopeBorder = { fg = "overlay", bg = "none" },
          TelescopeNormal = { fg = "subtle", bg = "none" },
          TelescopeSelection = { fg = "text", bg = "highlight_med" },
          TelescopeSelectionCaret = { fg = "love", bg = "highlight_med" },
          TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },
          TelescopeTitle = { fg = "iris", bold = true },
          TelescopePromptTitle = { fg = "base", bg = "love" },
          TelescopePreviewTitle = { fg = "base", bg = "iris" },
          TelescopeResultsTitle = { fg = "base", bg = "pine" },
        },
      })
      vim.cmd.colorscheme("rose-pine-moon")
    end,
  },
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
      -- vim.cmd.colorscheme("zenbones")
      -- vim.cmd.colorscheme("catppuccin-frappe")
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
