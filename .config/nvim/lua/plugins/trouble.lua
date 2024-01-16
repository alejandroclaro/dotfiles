local function configure()
  local configuration = {}

  configuration.action_keys = {
    help = '<C-h>'
  }

  require('trouble').setup(configuration)
end

local function setup(use)
  use({ 'folke/trouble.nvim', config = configure, requires = 'nvim-tree/nvim-web-devicons' })
end

return { setup = setup }
