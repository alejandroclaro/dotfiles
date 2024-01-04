local function configure()
  local configuration = {}

  configuration.highlight = { enable = true }
  configuration.indent    = { enable = true }

  configuration.ensure_installed = {
    'bash',
    'c',
    'clojure',
    'cmake',
    'cpp',
    'css',
    'diff',
    'fish',
    'html',
    'javascript',
    'jsdoc',
    'json',
    'jsonc',
    'lua',
    'luadoc',
    'luap',
    'markdown',
    'markdown_inline',
    'python',
    'query',
    'regex',
    'toml',
    'tsx',
    'typescript',
    'vim',
    'vimdoc',
    'yaml'
  }

  configuration.incremental_selection = {
    enable  = true,
    keymaps = {
      init_selection    = '<C-space>',
      node_incremental  = '<C-space>',
      scope_incremental = false,
      node_decremental  = '<bs>',
    },
  }

  require('nvim-treesitter.configs').setup(configuration)
end

local function setup(use)
  use({ 'nvim-treesitter/nvim-treesitter', config = configure })
end

return { setup = setup }
