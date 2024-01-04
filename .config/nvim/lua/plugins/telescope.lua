local function configure()
  local telescope = require('telescope')

  telescope.setup()
  telescope.load_extension("fzf")
end

local function setup(use)
  use({ 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' })
  use({ 'nvim-telescope/telescope-fzf-native.nvim', config = configure, after = 'telescope.nvim', run = 'make' })
end

return { setup = setup }
