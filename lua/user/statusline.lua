local extract_hl = function(hl, fore)
  return ('#%06x'):format(vim.api.nvim_get_hl_by_name(hl, true)[fore and 'background' or 'foreground'] or 255)
end

local get_filename = function()
  return vim.fn.expand '%:p:.'
end

local divider = '- | '

require('staline').setup {
  defaults = {
    expand_null_ls = false, -- This expands out all the null-ls sources to be shown
    left_separator = '',
    right_separator = '',
    full_path = false,
    line_column = '%l:%c   %p%% ', -- `:h stl` to see all flags.

    fg = '#000000', -- Foreground text color.
    bg = 'none', -- Default background is transparent.
    -- bg              = "#242628",
    inactive_color = '#303030',
    inactive_bgcolor = 'none',
    true_colors = true, -- true lsp colors.
    font_active = 'none', -- "bold", "italic", "bold,italic", etc

    mod_symbol = '  ',
    lsp_client_symbol = '  ',
    branch_symbol = ' ',
    cool_symbol = '', -- Change this to override default OS icon.
    null_ls_symbol = '', -- A symbol to indicate that a source is coming from null-ls
  },
  mode_colors = {
    n = extract_hl 'Staline',
    i = extract_hl 'Staline',
    c = extract_hl 'Staline',
    v = extract_hl 'Staline',
  },
  mode_icons = {
    n = ' ',
    i = ' ',
    c = ' ',
    v = ' ', -- etc..
  },
  sections = {
    left = { '- ', '-mode', '-|', '-cwd', 'left_sep_double', ' ', { 'Staline', get_filename } },
    mid = {},
    right = { 'lsp', 'right_sep_double', '- ', '-lsp_name', divider, '-branch', divider, '-line_column' },
  },
  special_table = {
    NvimTree = { 'NvimTree', ' ' },
    packer = { 'Packer', ' ' }, -- etc
  },
  lsp_symbols = {
    Error = ' ',
    Info = ' ',
    Warn = ' ',
    Hint = '',
  },
}
