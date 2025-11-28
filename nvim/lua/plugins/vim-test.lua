return {
  {
    "vim-test/vim-test",
    dependencies = {
      "preservim/vimux", -- Optional: run tests in tmux split
    },
    keys = {
      {
        "<leader>tt",
        "<cmd>TestNearest<cr>",
        desc = "Run nearest test",
      },
      {
        "<leader>tf",
        "<cmd>TestFile<cr>",
        desc = "Run test file",
      },
      {
        "<leader>ts",
        "<cmd>TestSuite<cr>",
        desc = "Run test suite",
      },
      {
        "<leader>tl",
        "<cmd>TestLast<cr>",
        desc = "Run last test",
      },
      {
        "<leader>tv",
        "<cmd>TestVisit<cr>",
        desc = "Visit last test file",
      },
    },
    config = function()
      -- Test strategy: where to run tests
      -- Options: 'neovim', 'vimux', 'dispatch', 'basic', 'floaterm'
      vim.g["test#strategy"] = "vimux"
    end,
  },
  -- Add other testing-related plugins here if you have them, e.g., nvim-neotest
  -- {
  --   "nvim-neotest/neotest",
  --   dependencies = {
  --     "nvim-neotest/neotest-vim-test",
  --   },
  --   opts = {
  --     adapters = {
  --       ["neotest-vim-test"] = {
  --         allow_file_types = { "elm" },
  --         runner = "elmtest",
  --       },
  --     },
  --   },
  -- },
}
