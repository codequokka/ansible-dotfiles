local M = {}

M.alphanvim = {
  disable = false,
  header = {
    val = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    },
  },
}

-- M.nvimcmp = {
--   local cmp = require 'cmp'
--   override_options = function()
--     local cmp = require "cmp"

--     return {
--       mapping = {
--         ["<C-d>"] = cmp.mapping.scroll_docs(-8),
--       },
--     }
--   end,
--   setup = {
--     mapping = preset.insert({
--       ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--       ['<C-f>'] = cmp.mapping.scroll_docs(4),
--       ['<C-Space>'] = cmp.mapping.complete(),
--       ['<C-e>'] = cmp.mapping.abort(),
--        -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--       ['<CR>'] = cmp.mapping.confirm({ select = true }),
--     }),
--   }
-- }

-- M.treesitter = {
--   ensure_installed = {
--     "vim",
--     "lua",
--     "html",
--     "css",
--     "typescript",
--     "c",
--   },
-- }

M.mason = {
  ensure_installed = {
    -- Ansible
    "ansible-language-server",

    -- Yaml
    "yaml-language-server",

    -- shell
    "shfmt",
    "shellcheck",
  },
}

-- git support in nvimtree
-- M.nvimtree = {
--   git = {
--     enable = true,
--   },
--
--   renderer = {
--     highlight_git = true,
--     icons = {
--       show = {
--         git = true,
--       },
--     },
--   },
-- }

return M
