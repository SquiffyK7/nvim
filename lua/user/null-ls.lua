local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

require('null-ls').setup {
  sources = {
    require('null-ls').builtins.formatting.stylua.with {
      extra_args = {
        '--indent-type',
        'Spaces',
        '--indent-width',
        '2',
        '--quote-style',
        'AutoPreferSingle',
        '--call-parentheses',
        'None',
      },
    },
    require('null-ls').builtins.formatting.prettier,
    require('null-ls').builtins.formatting.xmllint,
  },
  on_attach = function(client, bufnr)
    if client.supports_method 'textDocument/formatting' then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          vim.lsp.buf.formatting_sync()
        end,
      })
    end
  end,
}
