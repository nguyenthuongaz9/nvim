
require 'core.keymaps'
require 'core.options'
-- Kiểm tra và tải lazy.nvim nếu chưa có
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end 
vim.opt.rtp:prepend(lazypath)

-- Cấu hình lazy.nvim và các plugin
require('lazy').setup({
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- không bắt buộc, nhưng được khuyến nghị
      "MunifTanjim/nui.nvim",
    }
  },
  {
    'shaunsingh/nord.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = false
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false

      require('nord').set()
    end
  },
  { "neovim/nvim-lspconfig" }
})

local lspconfig = require("lspconfig")
lspconfig.tsserver.setup{}  -- TypeScript
lspconfig.pyright.setup{}   -- Python
lspconfig.gopls.setup{}     -- Go
