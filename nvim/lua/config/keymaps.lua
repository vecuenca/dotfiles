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

vim.keymap.set("v", "<leader>r", function()
  vim.cmd('normal! "ry')
  vim.cmd([[normal! \<Esc>]])

  local text = vim.fn.getreg("r")
  text = text:gsub("\n", " ")

  local puts = 'IO.puts("\\n\\n<<<<< ' .. text .. '\\n\\n")'
  local putt = string.format("IO.inspect(%s, limit: :infinity, pretty: true, structs: false)", text)
  local pute = 'IO.puts("\\n\\n>>>>> ' .. text .. '\\n\\n")'

  vim.api.nvim_put({ puts }, "l", true, true)
  vim.cmd("normal! k")
  vim.api.nvim_put({ putt }, "l", true, true)
  vim.cmd("normal! k")
  vim.api.nvim_put({ pute }, "l", true, true)
  vim.cmd("normal! k")
end, { silent = true, desc = "Elixir IO debug selection" })

vim.keymap.set("v", "<leader>R", function()
  vim.cmd('normal! "ry')
  vim.cmd([[normal! \<Esc>]])

  local text = vim.fn.getreg("r")
  text = text:gsub("\n", " ")

  local putf = "|> (fn x ->"
  local puts = 'IO.puts("\\n\\n<<<<< ' .. text .. '\\n\\n")'
  local putt = "IO.inspect(x, limit: :infinity, pretty: true, structs: false)"
  local pute = 'IO.puts("\\n\\n>>>>> ' .. text .. '\\n\\n")'
  local putfe = "x end).()"

  vim.api.nvim_put({ putf }, "l", true, true)
  vim.cmd("normal! k")
  vim.api.nvim_put({ puts }, "l", true, true)
  vim.cmd("normal! k")
  vim.api.nvim_put({ putt }, "l", true, true)
  vim.cmd("normal! k")
  vim.api.nvim_put({ pute }, "l", true, true)
  vim.cmd("normal! k")
  vim.api.nvim_put({ putfe }, "l", true, true)
  vim.cmd("normal! k")
end, { silent = true, desc = "Elixir pipe debug selection" })

-- Yank Elixir module file name
vim.keymap.set("n", "<leader>ym", function()
  -- First try to find the actual module definition in the file
  local lines = vim.api.nvim_buf_get_lines(0, 0, 50, false) -- Check first 50 lines

  for _, line in ipairs(lines) do
    local module_match = line:match("defmodule%s+([%w%.]+)")
    if module_match then
      vim.fn.setreg("+", module_match)
      vim.fn.setreg('"', module_match)
      print("Yanked Elixir module: " .. module_match)
      return
    end
  end

  -- Fallback to path-based inference if no defmodule found
  print("No defmodule found, using path-based inference...")
  -- (include the previous path-based logic here as fallback)
end, { desc = "Yank current file's Elixir module name" })
