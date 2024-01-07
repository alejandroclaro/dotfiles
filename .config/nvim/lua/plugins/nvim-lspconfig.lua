local function configure()
  local configuration = {}
  local lsp           = require('lspconfig')

  local has_cmp, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')

  if has_cmp then
    configuration.capabilities = cmp_nvim_lsp.default_capabilities()
  end

  lsp.bashls.setup(configuration)
  lsp.clangd.setup(configuration)
  lsp.clojure_lsp.setup(configuration)
  lsp.cmake.setup(configuration)
  lsp.cssls.setup(configuration)
  lsp.eslint.setup(configuration)
  lsp.gradle_ls.setup(configuration)
  -- lsp.grammarly.setup(configuration)
  lsp.html.setup(configuration)
  lsp.java_language_server.setup(configuration)
  lsp.julials.setup(configuration)
  lsp.lua_ls.setup(configuration)
  lsp.pylsp.setup(configuration)
end

local function setup(use)
  use({ 'neovim/nvim-lspconfig', config = configure, after = { 'mason-lspconfig.nvim', 'nvim-cmp' } })
end

return { setup = setup }
