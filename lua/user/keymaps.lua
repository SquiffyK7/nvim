local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

vim.keymap.set('n', '<C-p>', ':Telescope find_files find_command=fd,--hidden<CR>', opts)
vim.keymap.set('n', '<leader>g', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", opts)

vim.keymap.set('n', '<A-h>', ':BufferLineCyclePrev<CR>', opts)
vim.keymap.set('n', '<A-l>', ':BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '<A-H>', ':BufferLineMovePrev<CR>', opts)
vim.keymap.set('n', '<A-L>', ':BufferLineMoveNext<CR>', opts)

vim.keymap.set('x', '<A-h>', '<Plug>GoVSMLeft', opts)
vim.keymap.set('x', '<A-j>', '<Plug>GoVSMDown', opts)
vim.keymap.set('x', '<A-k>', '<Plug>GoVSMUp', opts)
vim.keymap.set('x', '<A-l>', '<Plug>GoVSMRight', opts)

vim.keymap.set('x', '<A-H>', '<Plug>GoVSDLeft', opts)
vim.keymap.set('x', '<A-J>', '<Plug>GoVSDDown', opts)
vim.keymap.set('x', '<A-K>', '<Plug>GoVSDUp', opts)
vim.keymap.set('x', '<A-L>', '<Plug>GoVSDRight', opts)

vim.keymap.set('n', '<C-Left>', ':vertical resize +4<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize -4<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize -4<CR>', opts)
vim.keymap.set('n', '<C-Up>', ':resize +4<CR>', opts)

vim.keymap.set('n', 'XX', ':Bdelete<CR>', opts)
vim.keymap.set('n', 'XI', ':Bdelete!<CR>', opts)
vim.keymap.set('n', 'XL', ':BufferLineCloseLeft<CR>', opts)
vim.keymap.set('n', 'XR', ':BufferLineCloseRight<CR>', opts)
vim.keymap.set('n', 'XO', ':BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>', opts)
vim.keymap.set('n', 'XA', ':BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>:Bdelete!<CR>', opts)

vim.keymap.set('n', '<leader>do', ':DiffviewOpen<CR>', opts)
vim.keymap.set('n', 'gl', ':DiffviewFileHistory %%<CR>', opts)

-- https://vim.fandom.com/wiki/Alternative_tab_navigation
vim.keymap.set('n', 'th', ':tabfirst<CR>', opts)
vim.keymap.set('n', 'tj', ':tabprev<CR>', opts)
vim.keymap.set('n', 'tk', ':tabnext<CR>', opts)
vim.keymap.set('n', 'tl', ':tablast<CR>', opts)
vim.keymap.set('n', 'tn', ':tabnew<CR>', opts)
vim.keymap.set('n', 'tc', ':tabclose<CR>', opts)
vim.keymap.set('n', 'tm', ':tabmove<Space>', opts)

vim.cmd [[
  let g:tmux_navigator_no_mappings = 1

  noremap <silent> <c-h> :<C-U>TmuxNavigateLeft<cr>
  noremap <silent> <c-j> :<C-U>TmuxNavigateDown<cr>
  noremap <silent> <c-k> :<C-U>TmuxNavigateUp<cr>
  noremap <silent> <c-l> :<C-U>TmuxNavigateRight<cr>
]]
