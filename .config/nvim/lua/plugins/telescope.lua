function _G.telescope_open_qflist_with_trouble(...)
  require("telescope.actions").send_selected_to_qflist(...)
  vim.cmd('cclose')
  vim.cmd('Trouble quickfix')
end

local function configure()
  local telescope = require('telescope')
  local actions = require('telescope.actions')
  local configuration = {}

  configuration.defaults = {}

  configuration.defaults.mappings = {
    i = {
      ['<M-a>'] = actions.toggle_all,
      ['<C-q>'] = _G.telescope_open_qflist_with_trouble,
      ['<C-h>'] = actions.which_key
    },
    n = {
      ['<M-a>'] = actions.toggle_all,
      ['<C-q>'] = _G.telescope_open_qflist_with_trouble,
      ['<C-h>'] = actions.which_key
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
