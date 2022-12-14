require('nvim-lsp-installer').setup {}

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>i', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', ":lua require('telescope.builtin').lsp_references()<CR>", bufopts)
  -- vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- configure settings: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
require('lspconfig')['tsserver'].setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.document_formatting = false
    client.server_capabilities.documentFormattingProvider = false
    on_attach(client, bufnr)
  end,
  flags = lsp_flags,
  capabilities = capabilities,
}

require('lspconfig')['eslint'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
}

require('lspconfig')['sumneko_lua'].setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.document_formatting = false
    client.server_capabilities.documentFormattingProvider = false
    on_attach(client, bufnr)
  end,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = {
          [vim.fn.expand '$VIMRUNTIME/lua'] = true,
          [vim.fn.stdpath 'config' .. '/lua'] = true,
        },
      },
    },
  },
}

local signs = {
  { name = 'DiagnosticSignError', text = '???' },
  { name = 'DiagnosticSignWarn', text = '???' },
  { name = 'DiagnosticSignHint', text = '???' },
  { name = 'DiagnosticSignInfo', text = '???' },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = '' })
end

vim.diagnostic.config {
  virtual_text = false,
  signs = {
    active = signs,
  },
  -- update_in_insert = true,
  -- underline = true,
  -- severity_sort = true,-
  --

  float = {
    --   focusable = false,
    --   style = "minimal",
    border = 'rounded',
    source = false,
    header = '',
    prefix = '',
    -- prefix = function(diagnostic)
    --   return diagnostic.source
    -- end,
    max_width = 80,

    format = function(diagnostic)
      if diagnostic.source == 'eslint' then
        return string.format(
          ' %s \n\n %s(%s) ',
          diagnostic.message,
          diagnostic.source,
          -- shows the name of the rule
          diagnostic.user_data.lsp.code
        )
      end
      return string.format(' %s \n\n %s', diagnostic.message, diagnostic.source)
    end,
  },
}

require('nvim-lsp-installer').setup {
  ui = {
    border = 'rounded',
  },
}

require('lspconfig.ui.windows').default_options.border = 'rounded'
