-- return {
--   'shaunsingh/nord.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Example config in lua
--     vim.g.nord_contrast = true
--     vim.g.nord_borders = false
--     vim.g.nord_disable_background = true
--     vim.g.nord_italic = false
--     vim.g.nord_uniform_diff_background = true
--     vim.g.nord_bold = false
--
--     -- Load the colorscheme
--     require('nord').set()
--
--     -- Toggle background transparency
--     local bg_transparent = true
--
--     local toggle_transparency = function()
--       bg_transparent = not bg_transparent
--       vim.g.nord_disable_background = bg_transparent
--       vim.cmd [[colorscheme nord]]
--     end
--
--     vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
--   end,
-- }

-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("gruvbox").setup({
-- 			contrast = "hard", -- hoặc "soft"
-- 			bold = false,
-- 			italic = {
-- 				strings = false,
-- 				comments = false,
-- 				operators = false,
-- 				folds = false,
-- 			},
-- 		})
--
-- 		vim.cmd([[colorscheme gruvbox]])
-- 	end,
-- }
-- Lua
-- return {
-- 	"olivercederborg/poimandres.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.o.termguicolors = true
-- 		require("poimandres").setup({
-- 			bg_transparent = true,
-- 		})
-- 		vim.cmd("colorscheme poimandres")
-- 	end,
-- }

-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("tokyonight").setup({
--       style = "storm", -- "storm", "moon", "night", "day"
--       transparent = true,
--       terminal_colors = true,
--     })
--     vim.cmd([[colorscheme tokyonight]])
--   end,
-- }

-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       flavour = "macchiato", -- latte, frappe, macchiato, mocha
--       transparent_background = true,
--     })
--     vim.cmd.colorscheme("catppuccin")
--   end,
-- }

-- return {
--   "EdenEast/nightfox.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("nightfox").setup({
--       options = {
--         transparent = true,
--       },
--     })
--     vim.cmd("colorscheme nordfox") -- hoặc duskfox, nightfox, dayfox, etc.
--   end,
-- }

-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("rose-pine").setup({
--       disable_background = true,
--     })
--     vim.cmd("colorscheme rose-pine") -- hoặc rose-pine-moon, rose-pine-dawn
--   end,
-- }

-- return {
--   "neanias/everforest-nvim",
--   version = false,
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("everforest").setup({
--       background = "soft", -- hoặc "medium", "hard"
--       transparent_background_level = 1,
--     })
--     vim.cmd("colorscheme everforest")
--   end,
-- }


return {
  "nyoom-engineering/oxocarbon.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.opt.background = "dark" -- hoặc "light"
    vim.cmd("colorscheme oxocarbon")
  end,
}
