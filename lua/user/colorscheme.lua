local hour = tonumber(vim.fn.strftime '%H')

if hour < 20 and hour > 7 then
  vim.opt.background = 'light'
  vim.g.catppuccin_flavour = 'latte' -- latte, frappe, macchiato, mocha

  require('catppuccin').setup()

  vim.cmd 'colorscheme catppuccin'
else
  vim.opt.background = 'dark'
  vim.cmd 'colorscheme kanagawa'
end
