local colors = require('onedark.palette').warm

require('bufferline').setup {
  options = {
    mode = 'buffers', -- set to "tabs" to only show tabpages instead
    offsets = { { filetype = 'NvimTree', text = 'File Explorer' } },
    show_buffer_close_icons = false,
    always_show_bufferline = true,

    separator_style = 'thick',
  },

  highlights = {
    fill = {
      bg = colors.bg_d,
    },
    buffer_selected = {
      bold = true,
      italic = false,
    },
  },
}
