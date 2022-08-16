require('bufferline').setup {
  options = {
    mode = "buffers", -- set to "tabs" to only show tabpages instead
    offsets = { { filetype = "NvimTree", text = "File Explorer" } },
    show_buffer_close_icons = false,
    always_show_bufferline = true,

    separator_style = "thick",
  },

  highlights = {
    fill = {
      bg = "#242628",
    },
    buffer_selected = {
      bold = true,
      italic = false,
    },
  }
}
