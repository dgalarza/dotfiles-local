-- Customize leader key
vim.g.mapleader = ","

-- Set the behavior of tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Command lookback history
vim.opt.history = 50

-- Disable backups/swap files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Specify default split direction
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Show line numbers
vim.opt.number = true

-- One space when joining lines ending in punctuation
vim.opt.joinspaces = false

-- Disable line wrapping
vim.opt.wrap = false

-- Enter normal mode in terminal mode
vim.api.nvim_set_keymap("t", "<C-]>", "<C-\\><C-N>", { noremap = true })
vim.api.nvim_set_keymap("t", "<C-[>", "<C-\\><C-N>", { noremap = true })
vim.api.nvim_set_keymap("t", "<ESC>", "<C-\\><C-N>", { noremap = true })

-- Edit from current file path
vim.api.nvim_set_keymap("n", "<Leader>h", ":e %:h", { noremap = true })
