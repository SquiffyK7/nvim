require('Comment').setup {
  toggler = {
    line = '<C-_>',
  },
  opleader = {
    line = '<C-_>',
  },
  mappings = {
    basic = true,
    extra = false,
    extended = false,
  },
  -- https://github.com/JoosepAlviste/nvim-ts-context-commentstring#commentnvim
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}
