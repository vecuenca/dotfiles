return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" }, -- Make sure plenary is installed
  config = function()
    require("telescope").setup({
      defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },
        dynamic_preview_title = true,
        -- controls transparency
        winblend = 0,
        sorting_strategy = "ascending",
        layout_strategy = "vertical",
        layout_config = {
          prompt_position = "bottom",
          height = 0.95,
          vertical = {
            preview_cutoff = 0,
          },
        },
        preview_cutoff = 1,
      },
      pickers = {
        live_grep = {
          file_ignore_patterns = { "node_modules", ".git", ".venv" },
          additional_args = function(_)
            return { "--hidden" }
          end,
        },
        find_files = {
          file_ignore_patterns = { "node_modules", ".git", ".venv" },
          hidden = true,
        },
      },
    })
  end,
}
