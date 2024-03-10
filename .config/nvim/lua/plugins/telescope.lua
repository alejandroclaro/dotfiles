local function configure()
  local telescope = require('telescope')
  local actions = require('telescope.actions')
  local configuration = {}

  configuration.defaults = {}

  configuration.defaults.mappings = {
    i = {
      ['<M-a>'] = actions.toggle_all
    },
    n = {
      ['<M-a>'] = actions.toggle_all
    },
  }

  telescope.setup(configuration)
  telescope.load_extension('aerial')
  telescope.load_extension('fzf')
  telescope.load_extension('undo')
end

local function setup(use)
  local requires = 'nvim-lua/plenary.nvim'
  local after = { 'telescope.nvim', 'telescope-undo.nvim' }

  use({ 'nvim-telescope/telescope.nvim', requires = requires })
  use({ 'debugloop/telescope-undo.nvim', after = 'telescope.nvim' })
  use({ 'nvim-telescope/telescope-fzf-native.nvim', config = configure, after = after, run = 'make' })
end

return { setup = setup }
