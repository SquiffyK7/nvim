local colors = require("onedark.palette").warm

local get_filename = function()
  return vim.fn.expand('%:p:.')
end

local divider = '- | '

require('staline').setup {
	defaults = {
        expand_null_ls = false,  -- This expands out all the null-ls sources to be shown
		left_separator  = "",
		right_separator = "",
		full_path       = false,
		line_column     = "%l:%c   %p%% ", -- `:h stl` to see all flags.

		fg              = "#000000",  -- Foreground text color.
		bg              = "none",     -- Default background is transparent.
		-- bg              = "#242628",
		inactive_color  = "#303030",
		inactive_bgcolor = "none", true_colors     = true,      -- true lsp colors.
		font_active     = "none",     -- "bold", "italic", "bold,italic", etc

		mod_symbol      = "  ", lsp_client_symbol = "  ",
		branch_symbol   = " ",
		cool_symbol     = "",       -- Change this to override default OS icon.
        null_ls_symbol = "",          -- A symbol to indicate that a source is coming from null-ls
	},
	mode_colors = {
		n = colors.yellow,
		i = colors.yellow,
		c = colors.yellow,
		v = colors.yellow,
	},
	mode_icons = {
		n = " ",
		i = " ",
		c = " ",
		v = " ",   -- etc..
	},
	sections = {
		left = { '- ', '-mode', '-|', '-cwd', 'left_sep_double', ' ', { 'StalineFilename', get_filename } },
    mid = { },
		right = { 'lsp', 'right_sep_double', '- ', '-lsp_name', divider, '-branch', divider, '-line_column' },
	},
	special_table = {
		NvimTree = { 'NvimTree', ' ' },
		packer = { 'Packer',' ' },        -- etc
	},
	lsp_symbols = {
		Error=" ",
		Info=" ",
		Warn=" ",
		Hint="",
	},
}

vim.api.nvim_command(string.format("highlight StalineFilename guifg=%s guibg=%s", colors.yellow, colors.none))
