local kanagawa = require('kanagawa.colors').setup()

require('bufferline').setup {
  options = {
    mode = 'buffers', -- set to "tabs" to only show tabpages instead
    offsets = { { filetype = 'NvimTree', text = 'File Explorer' } },
    show_buffer_close_icons = false,
    always_show_bufferline = true,

    separator_style = 'thick',
  },

  highlights = {
    tab_selected = {
      fg = kanagawa.fujiWhite,
    },
    buffer_selected = {
      italic = false,
    },
  },
}
