local overrides = require "custom.plugins.overrides"

return {
  ["goolord/alpha-nvim"] = {
    override_options = overrides.alphanvim,
  },

  ["hrsh7th/nvim-cmp"] = {
    -- override_options = overrides.nvimcmp,
    override_options = function()
      local cmp = require "cmp"

      return {
        mapping = {
          ["<C-d>"] = cmp.mapping.scroll_docs(-8),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        },
      }
    end,
  },

  ["tpope/vim-fugitive"] = {},

  ["christoomey/vim-tmux-navigator"] = {
    --vim.g.tmux_navigator_no_mappings = 1
    -- noremap <silent> <a-h> :<C-U>TmuxNavigateLeft<cr>
    -- noremap <silent> <a-j> :<C-U>TmuxNavigateDown<cr>
    -- noremap <silent> <a-k> :<C-U>TmuxNavigateUp<cr>
    -- noremap <silent> <a-l> :<C-U>TmuxNavigateRight<cr>
    -- noremap <silent> <a-\> :<C-U>TmuxNavigatePrevious<cr>
  },

  ["phaazon/hop.nvim"] = {
    branch = "v2",
    config = function()
      require("hop").setup()
    end,
  },

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },
  --
  -- -- overrde plugin configs
  -- ["nvim-treesitter/nvim-treesitter"] = {
  --   override_options = overrides.treesitter,
  -- },
  --
  --
  -- ["kyazdani42/nvim-tree.lua"] = {
  --   override_options = overrides.nvimtree,
  -- },
  --
  -- -- Install a plugin
  -- ["max397574/better-escape.nvim"] = {
  --   event = "InsertEnter",
  --   config = function()
  --     require("better_escape").setup()
  --   end,
  -- },
  --
  -- -- code formatting, linting etc
  -- ["jose-elias-alvarez/null-ls.nvim"] = {
  --   after = "nvim-lspconfig",
  --   config = function()
  --     require "custom.plugins.null-ls"
  --   end,
  -- },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
