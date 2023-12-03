local M = {}

M.custom = {
  n = {
    ["<leader>q"] = { ":q<CR>", "Quit"},
    ["<leader><S-q>"] = { ":q!<CR>", "Force quit"},
    ["0"] = {"^", opts = {noremap = true}},
    ["^"] = {"0", opts = {noremap = true}},
  },
  i = {
    ["jk"] = { "<ESC>", "Escape insert mode", opts = { nowait =  true}},
  },
}

return M
