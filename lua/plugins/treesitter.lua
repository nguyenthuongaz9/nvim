return {
  'nvim-treesitter/nvim-treesitter',
  config = function()
    require('nvim-treesitter.config').setup({
      ensure_installed = {
        'lua', 'python', 'javascript', 'typescript',
        'vimdoc', 'vim', 'regex', 'terraform', 'sql',
        'dockerfile', 'toml', 'json', 'java', 'groovy',
        'go', 'gitignore', 'graphql', 'yaml', 'make',
        'cmake', 'markdown', 'markdown_inline', 'bash',
        'tsx', 'css', 'html', 'c_sharp',
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
