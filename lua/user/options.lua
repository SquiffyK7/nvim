-- vim.opt.backup = false
vim.opt.clipboard = 'unnamedplus' -- use system keyboard for yank / put
-- vim.opt.cmdheight = 2
-- vim.opt.completeopt = { "menuone"
-- vim.opt.conceallevel = 0
-- vim.opt.fileencoding = "utf-8"
-- vim.opt.hlsearch = true
-- vim.opt.mouse = "a"
-- vim.opt.pumheight = 10
-- vim.opt.showmode = false
-- vim.opt.showtabline = 1
vim.opt.showmode = false -- don't show e.g. `-- NORMAL ``- at bottom.
vim.opt.ignorecase = true -- ignore case on search
vim.opt.smartcase = true -- ignore case on search, except when an upper case is entered.
-- vim.opt.smartindent = true
vim.opt.splitbelow = true -- focus new window
vim.opt.splitright = true -- focus new window
-- vim.opt.swapfile = false
vim.opt.termguicolors = true -- enable 24-bit RGB color
-- vim.opt.timeoutlen = 1000
-- vim.opt.undofile = true
-- vim.opt.updatetime = 300
-- vim.opt.writebackup = false
vim.opt.laststatus = 3 -- use global status line
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- research
vim.opt.tabstop = 2 -- research
vim.opt.cursorline = true -- highlight line of cursor
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes' -- always show sign column
vim.opt.scrolloff = 8 -- scroll when cursor is 8 characters away from top / bottom

vim.cmd [[
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1
]]
