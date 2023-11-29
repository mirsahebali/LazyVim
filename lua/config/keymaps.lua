-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Command window
vim.keymap.set({ "n", "v" }, "cw", "q:", { desc = "Command Window" })

vim.keymap.set({ "n", "v" }, "K", function()
  require("pretty_hover").hover()
end, { desc = "Command Window" })
-- window Navigation remaps--
vim.keymap.set({ "n", "v", "t" }, "<C-j>", "<C-w>j", { desc = "Move window down" })
vim.keymap.set({ "n", "v", "t" }, "<C-k>", "<C-w>k", { desc = "Move window up" })
vim.keymap.set({ "n", "v", "t" }, "<C-l>", "<C-w>l", { desc = "Move window right" })
vim.keymap.set({ "n", "v", "t" }, "<C-h>", "<C-w>h", { desc = "Move window left" })
-- Save file
vim.keymap.set("n", "<leader>fs", "<cmd>w<cr>", { desc = " [F]ile [S]ave" })
-- Tmux Vim Navigation
vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Tmux Navigator Left" })
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Tmux Navigator Right" })
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Tmux Navigator Down" })
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Tmux Navigator Up" })
-- Toggle term with nvim terminal
vim.keymap.set({ "n", "t", "v" }, "<C-\\>", "<cmd>ToggleTerm direction=float <cr>", { desc = "ToggleTerm" })
vim.keymap.set({ "n", "t", "v" }, "<M-\\>", "<cmd>ToggleTerm direction=vertical size=38<cr>", { desc = "ToggleTerm" })
vim.keymap.set({ "n", "t" }, "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>", { desc = "LSP Format" })
-- require("custom.mappings.mini")
-- Buffline Mappings

vim.keymap.set("n", "<M-i>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<M-u>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous Buffer" })

vim.keymap.set("n", "<leader>C", "<cmd>BufferLineCloseOthers<cr>", { desc = "Close all other buffers", silent = true })
-- Line diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
-- Telescope mappings

vim.keymap.set(
  "n",
  "<leader>f/",
  "<cmd>Telescope current_buffer_fuzzy_find<cr>",
  { desc = "Find in current buffer", silent = true }
)

-- Oil.nvim Keymaps
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

--MultiCursor Mappings
vim.keymap.set({ "n", "v" }, "<M-,>", "<cmd>MCstart<cr>", { desc = "Start MultiCursor" })
