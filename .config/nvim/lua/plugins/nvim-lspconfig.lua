function _G.mason_install_lsp_tools()
  local ensure_installed = {
    'bashls',
    'clangd',
    'clojure_lsp',
    'cmake',
    'cssls',
    'eslint',
    'gradle_ls',
    'html',
    'julials',
    'lua_ls',
    'pylsp',
    'tsserver'
  }

  require('mason-lspconfig').setup({ ensure_installed = ensure_installed })
end

local function configure()
  local configuration = {}
  local lsp = require('lspconfig')
  local util = require('lspconfig.util')
  local has_cmp, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')

  local typescript_options = {
    root_dir = util.root_pattern('package.json', 'tsconfig.json', 'jsconfig.json', '.git'),
    settings = {
      workingDirectory = { mode = 'auto' }
    }
  }

  if has_cmp then
    configuration.capabilities = cmp_nvim_lsp.default_capabilities()
  end

  _G.mason_install_lsp_tools()

  lsp.bashls.setup(configuration)
  lsp.clangd.setup(configuration)
  lsp.clojure_lsp.setup(configuration)
  lsp.cmake.setup(configuration)
  lsp.cssls.setup(configuration)
  lsp.tsserver.setup(vim.tbl_deep_extend('force', configuration, typescript_options))
  lsp.eslint.setup(vim.tbl_deep_extend('force', configuration, typescript_options))
  lsp.gradle_ls.setup(configuration)
  lsp.html.setup(configuration)
  lsp.java_language_server.setup(configuration)
  lsp.julials.setup(configuration)
  lsp.lua_ls.setup(configuration)
  lsp.pylsp.setup(configuration)

  vim.fn.sign_define('DiagnosticSignError', { text = ' ', texthl = 'DiagnosticSignError', numhl = 'DiagnosticSignError' })
  vim.fn.sign_define('DiagnosticSignWarn', { text = ' ', texthl = 'DiagnosticSignWarn', numhl = 'DiagnosticSignWarn' })
  vim.fn.sign_define('DiagnosticSignHint', { text = ' ', texthl = 'DiagnosticSignHint', numhl = 'DiagnosticSignHint' })
  vim.fn.sign_define('DiagnosticSignInfo', { text = ' ', texthl = 'DiagnosticSignInfo', numhl = 'DiagnosticSignInfo' })
end

local function setup(use)
  local after = { 'mason.nvim', 'nvim-cmp', 'nvim-lspconfig' }

  use({ 'neovim/nvim-lspconfig' })
  use({ 'williamboman/mason-lspconfig.nvim', config = configure, after = after })
end

return { setup = setup }
