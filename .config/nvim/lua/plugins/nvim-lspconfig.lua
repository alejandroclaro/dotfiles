function _G.mason_install_lsp_tools()
  local ensure_installed = {
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
    'pylsp',
    'tsserver'
  }

  require("mason-lspconfig").setup({ ensure_installed = ensure_installed })
end

local function configure()
  local configuration         = {}
  local lsp                   = require('lspconfig')
  local has_cmp, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')


  if has_cmp then
    configuration.capabilities = cmp_nvim_lsp.default_capabilities()
  end

  _G.mason_install_lsp_tools()

  lsp.bashls.setup(configuration)
  lsp.clangd.setup(configuration)
  lsp.clojure_lsp.setup(configuration)
  lsp.cmake.setup(configuration)
  lsp.cssls.setup(configuration)
  lsp.tsserver.setup(configuration)
  -- lsp.eslint.setup(vim.tbl_deep_extend('force', configuration, { root_dir = _G.eslint_root_dir }))
  lsp.gradle_ls.setup(configuration)
  -- lsp.grammarly.setup(general)
  lsp.html.setup(configuration)
  lsp.java_language_server.setup(configuration)
  lsp.julials.setup(configuration)
  lsp.lua_ls.setup(configuration)
  lsp.pylsp.setup(configuration)
end

local function setup(use)
  local after = { 'mason.nvim', 'nvim-cmp', 'nvim-lspconfig' }

  use({ 'neovim/nvim-lspconfig' })
  use({ 'williamboman/mason-lspconfig.nvim', config = configure, after = after })
end

return { setup = setup }
