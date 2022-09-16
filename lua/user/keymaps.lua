local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

vim.keymap.set('n', '<C-p>', ':Telescope find_files find_command=fd,--hidden<CR>', opts)
vim.keymap.set('n', '<leader>g', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", opts)

vim.keymap.set('n', 'H', ':BufferLineCyclePrev<CR>', opts)
vim.keymap.set('n', 'L', ':BufferLineCycleNext<CR>', opts)

vim.keymap.set('n', '<C-Left>', ':vertical resize +10<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize -10<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize -10<CR>', opts)
vim.keymap.set('n', '<C-Up>', ':resize +10<CR>', opts)

vim.keymap.set('n', 'XX', ':Bdelete<CR>', opts)
vim.keymap.set('n', 'XI', ':Bdelete!<CR>', opts)
vim.keymap.set('n', 'XL', ':BufferLineCloseLeft<CR>', opts)
vim.keymap.set('n', 'XR', ':BufferLineCloseRight<CR>', opts)
vim.keymap.set('n', 'XO', ':BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>', opts)
vim.keymap.set('n', 'XA', ':BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>:Bdelete!<CR>', opts)

vim.keymap.set('n', '<leader>do', ':DiffviewOpen<CR>', opts)
vim.keymap.set('n', '<leader>dc', ':DiffviewClose<CR>', opts)
vim.keymap.set('n', 'gl', ':DiffviewFileHistory %%<CR>', opts)

-- https://vim.fandom.com/wiki/Alternative_tab_navigation
vim.keymap.set('n', 'th', ':tabfirst<CR>', opts)
vim.keymap.set('n', 'tj', ':tabprev<CR>', opts)
vim.keymap.set('n', 'tk', ':tabnext<CR>', opts)
vim.keymap.set('n', 'tl', ':tablast<CR>', opts)
vim.keymap.set('n', 'tn', ':tabnew<CR>', opts)
vim.keymap.set('n', 'tc', ':tabclose<CR>', opts)
vim.keymap.set('n', 'tm', ':tabmove<Space>', opts)
