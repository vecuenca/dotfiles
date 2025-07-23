return {
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        background = "hard", -- or "medium" or "soft"
        transparent_background_level = 2, -- enable transparency
      })
      vim.cmd.colorscheme("everforest")

      -- -- Function to apply transparency
      -- local function apply_transparency()
      --   local transparent_groups = {
      --     "Normal",
      --     "NormalNC",
      --     "NormalFloat",
      --     "FloatBorder",
      --     "TelescopeNormal",
      --     "TelescopeBorder",
      --     "TelescopePromptNormal",
      --     "TelescopeResultsNormal",
      --     "TelescopePreviewNormal",
      --     "TelescopePromptBorder",
      --     "TelescopeResultsBorder",
      --     "TelescopePreviewBorder",
      --     "TelescopeTitle",
      --     "TelescopePromptTitle",
      --     "TelescopePreviewTitle",
      --     "TelescopeResultsTitle",
      --     "SignColumn",
      --     "EndOfBuffer",
      --     "StatusLine",
      --     "StatusLineNC",
      --     "LineNr",
      --     "CursorLineNr",
      --     "Pmenu",
      --     "PmenuSel",
      --     "PmenuSbar",
      --     "PmenuThumb",
      --     "TabLine",
      --     "TabLineFill",
      --     "TabLineSel",
      --     "WinSeparator",
      --     "VertSplit",
      --   }
      --
      --   for _, group in ipairs(transparent_groups) do
      --     vim.api.nvim_set_hl(0, group, { bg = "none" })
      --   end
      -- end
      --
      -- -- Apply transparency immediately
      -- apply_transparency()
      --
      -- -- Also apply after colorscheme changes
      -- vim.api.nvim_create_autocmd("ColorScheme", {
      --   callback = apply_transparency,
      -- })
      --
      -- -- Force telescope transparency after it loads
      -- vim.api.nvim_create_autocmd("User", {
      --   pattern = "LazyLoad",
      --   callback = function(args)
      --     if args.data == "telescope.nvim" then
      --       vim.schedule(function()
      --         -- Force clear all telescope backgrounds
      --         local telescope_groups = vim.fn.getcompletion("Telescope", "highlight")
      --         for _, group in ipairs(telescope_groups) do
      --           vim.api.nvim_set_hl(0, group, { bg = "none" })
      --         end
      --       end)
      --     end
      --   end,
      -- })
      --
      -- -- Also try when telescope actually opens
      -- vim.api.nvim_create_autocmd("FileType", {
      --   pattern = "TelescopePrompt",
      --   callback = function()
      --     vim.schedule(function()
      --       apply_transparency()
      --     end)
      --   end,
      -- })
    end,
  },
  -- {
  --   "catppuccin/nvim",
  --   lazy = false,
  --   priority = 1000, -- load first
  --   name = "catppuccin",
  --   -- you can do it like this with a config function
  --   config = function()
  --     require("catppuccin").setup({
  --       -- configurations
  --       flavour = "auto", -- latte, frappe, macchiato, mocha
  --       background = { -- :h background
  --         light = "latte",
  --         dark = "macchiato",
  --       },
  --     })
  --   end,
  -- },
  -- {
  --   "dgox16/oldworld.nvim",
  --   lazy = false,
  --   priority = 10001,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
      -- colorscheme = "catppuccin",
      -- colorscheme = "oldworld",
    },
  },
}
