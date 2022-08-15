local opts = { noremap = true, silent = true }

-- Remap space as leader key vim.keymap.set("", "<Space>", "<Nop>", opts) -- what was space before?
vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- vim.keymap.set("n", "C-p", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>g", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", opts)

vim.keymap.set("n", "<leader>R", ":luafile ~/.config/nvim/init.lua<CR>", opts)

vim.keymap.set("n", "<leader>p", ":PrettierAsync<CR>", opts)

vim.keymap.set("n", "H", ":BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "L", ":BufferLineCycleNext<CR>", opts)

vim.keymap.set("n", "C-Left", ":resize -10<CR>", opts)
vim.keymap.set("n", "C-Right", ":resize +10<CR>", opts)
vim.keymap.set("n", "C-Down", ":vertical resize +10<CR>", opts)
vim.keymap.set("n", "C-Up", ":vertical resize -10<CR>", opts)

vim.keymap.set("n", "<leader>d", ":Bdelete<CR>", opts)
