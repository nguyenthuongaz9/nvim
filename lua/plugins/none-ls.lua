
return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
    'jayp0521/mason-null-ls.nvim',
  },
  config = function()
    local null_ls = require('null-ls')

    -- Định nghĩa các builtins
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    -- Setup mason-null-ls để tự động cài các tool cần thiết
    require('mason-null-ls').setup {
      ensure_installed = {
        'prettier',
        'stylua',
        'eslint_d',
        'shfmt',
        'checkmake',
        'ruff',
      },
      automatic_installation = true,
    }

    -- Định nghĩa các nguồn format và diagnostics
    local sources = {
      diagnostics.checkmake,
      formatting.prettier.with { filetypes = { 'html', 'json', 'yaml', 'markdown' } },
      formatting.stylua,
      formatting.shfmt.with { args = { '-i', '4' } },
      formatting.terraform_fmt,
      require('none-ls.formatting.ruff').with { extra_args = { '--extend-select', 'I' } },
      require('none-ls.formatting.ruff_format'),
    }

    -- Tạo augroup cho tự động format khi lưu
    local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

    null_ls.setup {
      sources = sources,
      on_attach = function(client, bufnr)
        -- Kiểm tra xem client có hỗ trợ format không
        if client.server_capabilities.documentFormattingProvider then
          -- Xóa các autocmd cũ trong group cho buffer hiện tại
          vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
          -- Tạo autocmd format khi lưu file
          vim.api.nvim_create_autocmd('BufWritePre', {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format { async = false, bufnr = bufnr }
            end,
          })
        end
      end,
    }
  end,
}
