return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "modern",
    win = {
      -- Increase this to prevent truncation
      -- width = 1000,
      height = { min = 4, max = 25 },
    },
  },
}
