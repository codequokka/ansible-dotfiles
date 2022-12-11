local overrides = require "custom.plugins.overrides"

return {
  ["goolord/alpha-nvim"] = {
    override_options = overrides.alphanvim,
  },

  ["tpope/vim-fugitive"] = {},

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
