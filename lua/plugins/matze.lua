
return {
  "matze/vim-move",
  config = function()
    vim.g.move_key_modifier = "C-S"

    vim.api.nvim_set_keymap("n", "<C-S-Up>", "<Plug>MoveLineUp", {})
    vim.api.nvim_set_keymap("n", "<C-S-Down>", "<Plug>MoveLineDown", {})

    vim.api.nvim_set_keymap("v", "<C-S-Up>", "<Plug>MoveBlockUp", {})
    vim.api.nvim_set_keymap("v", "<C-S-Down>", "<Plug>MoveBlockDown", {})
  end,
}
