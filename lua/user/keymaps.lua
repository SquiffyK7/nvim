local opts = { noremap = true, silent = true }

-- Remap space as leader key vim.keymap.set("", "<Space>", "<Nop>", opts) -- what was space before?
vim.g.mapleader = ' '
-- vim.g.maplocalleader = " "

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

vim.keymap.set('n', '<leader>f', ':Telescope find_files find_command=fd,--hidden<CR>', opts)

vim.keymap.set('n', '<leader>g', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", opts)
vim.keymap.set('n', '<leader>b', ":lua require('telescope.builtin').buffers()<CR>", opts)

vim.keymap.set('n', '<leader>R', ':luafile ~/.config/nvim/init.lua<CR>', opts)

vim.keymap.set('n', 'H', ':BufferLineCyclePrev<CR>', opts)
vim.keymap.set('n', 'L', ':BufferLineCycleNext<CR>', opts)

vim.keymap.set('n', 'C-Left', ':resize -10<CR>', opts)
vim.keymap.set('n', 'C-Right', ':resize +10<CR>', opts)
vim.keymap.set('n', 'C-Down', ':vertical resize +10<CR>', opts)
vim.keymap.set('n', 'C-Up', ':vertical resize -10<CR>', opts)

vim.keymap.set('n', 'XX', ':Bdelete<CR>', opts)
vim.keymap.set('n', 'XI', ':Bdelete!<CR>', opts)
vim.keymap.set('n', 'XL', ':BufferLineCloseLeft<CR>', opts)
vim.keymap.set('n', 'XR', ':BufferLineCloseRight<CR>', opts)
vim.keymap.set('n', 'XO', ':BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>', opts)
vim.keymap.set('n', 'XA', ':BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>:Bdelete!<CR>', opts)

vim.keymap.set('n', '<leader>do', ':DiffviewOpen<CR>', opts)
vim.keymap.set('n', '<leader>dc', ':DiffviewClose<CR>', opts)
vim.keymap.set('n', '<leader>dh', ':DiffviewFileHistory %%<CR>', opts)
