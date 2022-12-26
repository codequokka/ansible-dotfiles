local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "ansiblels",
  "yamlls"
}
-- local servers = { "html", "cssls", "tsserver", "clangd", "yamlls", "pylsp" }

-- lspconfig["ansiblels"].setup = {
--   settings = {
--     filetypes = {
--       "yaml.ansible",
--     },
--     ansible = {
--       ansible = {
--         path = ".venv/bin/ansible",
--         useFullyQualifiedCollectionNames = true
--       },
--       ansibleLint = {
--         enabled = true,
--         path = ".venv/bin/ansible-lint"
--       },
--       executionEnvironment = {
--         enabled = false
--       },
--       python = {
--         interpreterPath = ".venv/bin/python"
--       },
--       completion = {
--         provideRedirectModules = true,
--         provideModuleOptionAliases = true
--       }
--     },
--   },
-- }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

