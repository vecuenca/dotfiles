return {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000, -- load first
    name = "catppuccin",
    -- you can do it like this with a config function
    config = function()
      require("catppuccin").setup({
        -- configurations
        flavour = "auto", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "frappe",
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  -- {
  --   -- A dummy plugin entry just to add our toggle command
  --   -- "LazyVim/LazyVim" is used here to attach config logic
  --   "LazyVim/LazyVim",
  --   lazy = false,
  --   config = function()
  --     vim.api.nvim_create_user_command("ToggleTheme", function()
  --       local bg = vim.o.background == "dark" and "light" or "dark"
  --       vim.o.background = bg
  --       require("catppuccin").load()
  --     end, {})
  --   end,
  -- },
}
-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     lazy = false,
--     priority = 1000, -- load first
--     config = function()
--       -- Check if system is in dark mode (macOS)
--       local is_dark = vim.fn.system(
--         [[defaults read -g AppleInterfaceStyle 2>/dev/null]]
--       ):match("Dark") ~= nil
--
--       vim.o.background = is_dark and "dark" or "light"
--
--       require("catppuccin").setup({
--         flavour = is_dark and "frappe" or "latte",
--         background = {
--           light = "latte",
--           dark = "frappe",
--         },
--       })
--
--       vim.cmd.colorscheme("catppuccin")
--     end,
--   },
--
--   {
--     -- Add the manual theme toggle command
--     "LazyVim/LazyVim",
--     lazy = false,
--     config = function()
--       vim.api.nvim_create_user_command("ToggleTheme", function()
--         local is_dark = vim.o.background == "dark"
--         vim.o.background = is_dark and "light" or "dark"
--
--         require("catppuccin").setup({
--           flavour = is_dark and "latte" or "frappe",
--         })
--
--         vim.cmd.colorscheme("catppuccin")
--       end, {})
--     end,
--   },
-- }
--
