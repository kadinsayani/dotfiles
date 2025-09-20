-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options hereby
vim.opt.colorcolumn = "80,120"
vim.opt.tabstop = 4 -- Number of spaces that a tab counts for
vim.opt.shiftwidth = 4 -- Number of spaces for auto-indentation
vim.opt.softtabstop = 4 -- Number of spaces for editing/tabbing
vim.opt.expandtab = false -- Use tabs instead of spaces
vim.opt.smartindent = true -- Autoindent new lines
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.conceallevel = 0
-- vim.g.lazyvim_picker = "telescope"
local is_tmux_session = vim.env.TERM_PROGRAM == "tmux"
if vim.env.SSH_TTY and not is_tmux_session then
  local function paste()
    return { vim.fn.split(vim.fn.getreg(""), "\n"), vim.fn.getregtype("") }
  end
  local osc52 = require("vim.ui.clipboard.osc52")
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = osc52.copy("+"),
      ["*"] = osc52.copy("*"),
    },
    paste = {
      ["+"] = paste,
      ["*"] = paste,
    },
  }
end
-- vim.g.clipboard = {
--   name = "OSC 52",
--   copy = {
--     ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
--     ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
--   },
--   paste = {
--     ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
--     ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
--   },
-- }
