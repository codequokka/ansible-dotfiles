local M = {}

M.disabled = {
  n = {
    ["<C-n>"] = "",
  },
  i = {
    ["<C-b>"] = "",
    ["<C-e>"] = "",
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
  },
}

M.general = {
  n = {
    -- Telescope
    ["<leader>S"] = { "<cmd> Telescope <CR>", "Telescope" },
    ["<leader>Sf"] = { "<cmd> Telescope find_files <CR>", "Telescope find_files" },
    ["<leader>Sl"] = { "<cmd> Telescope live_grep <CR>", "Telescope live_grep" },
    ["<leader>Sb"] = { "<cmd> Telescope buffers <CR>", "Telescope buffers" },

    -- Git
    ["<leader>gs"] = { "<cmd> Git <CR>", "Git" },
    ["<leader>gd"] = { "<cmd> Gvdiffsplit <CR>", "Gvdiffsplit" },

    -- NvimTree
    ["<leader>T"] = { "<cmd> NvimTreeToggle <CR>", "NvimTreeToggle" },

    -- Hop
    ["<leader>s"] = {"<cmd> HopChar1 <CR>", "type a key and hop to the char"},
    ["<leader>ss"] = {"<cmd> HopChar1 <CR>", "type a key and hop to the char"},
  },

  i = {
     ["<C-a>"] = { "<Esc>^i", "beginning of line" },
     ["<C-e>"] = { "<End>", "end of line" },
     ["<C-b>"] = { "<Left>", "move left" },
     ["<C-f>"] = { "<Right>", "move right" },
     ["<C-n>"] = { "<Down>", "move down" },
     ["<C-p>"] = { "<Up>", "move up" },
   },
}

return M
