
-- plugins/multicursor.lua
return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    vim.g.VM_maps = {
      ["Find Under"]         = "<C-d>",      -- chọn từ hiện tại giống VSCode
      ["Find Subword Under"] = "<C-d>",      -- áp dụng cho camelCase
      ["Select All"]         = "<C-S-d>",    -- chọn tất cả các từ giống nhau
    }
  end
}
