-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--Yanking to system register
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system register" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system register" })
-- Paste without delete
vim.keymap.set({ "n", "v" }, "<leader>P", '"_dP', { desc = "Paste without delete" })

vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")
vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left, { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down, { desc = "Move to down window" })
vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up, { desc = "Move to up window" })
vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right, { desc = "Move to right window" })

vim.keymap.del("n", "<M-h>")
vim.keymap.del("n", "<M-j>")
vim.keymap.del("n", "<M-k>")
vim.keymap.del("n", "<M-l>")
vim.keymap.set("n", "<M-h>", require("smart-splits").resize_left)
vim.keymap.set("n", "<M-j>", require("smart-splits").resize_down)
vim.keymap.set("n", "<M-k>", require("smart-splits").resize_up)
vim.keymap.set("n", "<M-l>", require("smart-splits").resize_right)

vim.keymap.set("v", "<S-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<S-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

vim.keymap.del({ "n", "i", "s" }, "<C-f>")
vim.keymap.set({ "n", "i", "s" }, "<C-d>", function()
  if not require("noice.lsp").scroll(4) then
    return "<C-d>"
  end
end, { silent = true, expr = true })

vim.keymap.del({ "n", "i", "s" }, "<C-b>")
vim.keymap.set({ "n", "i", "s" }, "<C-u>", function()
  if not require("noice.lsp").scroll(-4) then
    return "<C-u>"
  end
end, { silent = true, expr = true })
