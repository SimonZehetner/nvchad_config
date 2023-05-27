local M = {}

M.custom = {
  n = {
    ["<leader>q"] = { ":q<CR>", "Quit"},
    ["<leader><S-q>"] = { ":q!<CR>", "Force quit"},
  },
  i = {
    ["jk"] = { "<ESC>", "Escape insert mode", opts = { nowait =  true}},
  },
}

return M
