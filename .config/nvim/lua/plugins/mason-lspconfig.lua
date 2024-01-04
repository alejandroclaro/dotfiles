local function configure()
  local configuration = {}

  configuration.ensure_installed = {
    'bashls',
    'clangd',
    'clojure_lsp',
    'cmake',
    'cssls',
    'eslint',
    'gradle_ls',
    'grammarly',
    'html',
    'julials',
    'lua_ls',
    'pylsp'
  }

  require("mason-lspconfig").setup(configuration)
end

local function setup(use)
  use({ 'williamboman/mason-lspconfig.nvim', config = configure })
end

return { setup = setup }
