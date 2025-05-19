
return {
  "christoomey/vim-tmux-navigator",
  lazy = false, -- load luôn khi start Neovim
  config = function()
    -- Nếu muốn tự map trong Neovim thay vì mặc định của plugin
    -- Có thể thêm hoặc không, plugin mặc định đã map Ctrl+h/j/k/l rồi
    vim.g.tmux_navigator_no_mappings = 1

    vim.api.nvim_set_keymap('n', '<C-h>', ':TmuxNavigateLeft<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<C-j>', ':TmuxNavigateDown<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<C-k>', ':TmuxNavigateUp<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<C-l>', ':TmuxNavigateRight<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-N>:TmuxNavigateLeft<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-N>:TmuxNavigateDown<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-N>:TmuxNavigateUp<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-N>:TmuxNavigateRight<CR>', { noremap = true, silent = true })
  end,
}
