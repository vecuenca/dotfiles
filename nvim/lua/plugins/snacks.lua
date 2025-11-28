return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = "ivy",

      sources = {
        gh_issue = {},
        gh_pr = {},
      },
      matcher = {
        frecency = true,
      },
      win = {
        input = {
          keys = {
            -- to close the picker on ESC instead of going to normal mode,
            -- add the following keymap to your config
            -- ["<Esc>"] = { "close", mode = { "n", "i" } },
            -- I'm used to scrolling like this in LazyGit
            -- ["J"] = { "preview_scroll_down", mode = { "i", "n" } },
            -- ["K"] = { "preview_scroll_up", mode = { "i", "n" } },
            -- ["H"] = { "preview_scroll_left", mode = { "i", "n" } },
            -- ["L"] = { "preview_scroll_right", mode = { "i", "n" } },
          },
        },
      },
    },
    gh = {},
  },
  keys = {
    {
      "<leader>gp",
      function()
        Snacks.picker.gh_pr()
      end,
      desc = "GitHub Pull Requests (open)",
    },
    -- {
    --   "<leader>gP",
    --   function()
    --     Snacks.picker.gh_pr({ state = "all" })
    --   end,
    --   desc = "GitHub Pull Requests (all)",
    -- },
    {
      "<leader>gm",
      function()
        Snacks.picker.gh_pr({ author = "@me" })
      end,
      desc = "GitHub PRs (mine)",
    },
  },
}
