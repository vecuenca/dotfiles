-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--

vim.keymap.set("n", "<leader>ye", function()
  local line_num = vim.fn.line(".") -- current line number
  local ret = "mix test --trace --only line:" .. line_num .. " " .. vim.fn.expand("%:p")
  vim.fn.setreg("+", ret)
  print("Copied mix test to clipboard")
end, { silent = true, desc = "Copy mix test at line to clipboard" })

-- keymaps to yank file name
function filename_with_line()
  local line, _ = unpack(vim.api.nvim_win_get_cursor(0))

  local filename = vim.fn.expand("%")
  local filename_with_line = filename .. ":" .. line
  vim.fn.setreg("+", filename_with_line)
end

-- yank the filename with the line number appended
vim.keymap.set("n", "<Leader>fl", filename_with_line, { silent = false, desc = "Yank filename with line number" })
-- yank the filename with path
vim.keymap.set("n", "<Leader>fo", ':let @+ = expand("%")<cr>', { silent = false, desc = "Yank filename with path" })
-- yank just the filename (without the path)
vim.keymap.set(
  "n",
  "<Leader>fp",
  ':let @+ = expand("%:t")<cr>',
  { silent = false, desc = "Yank filename without the path" }
)
