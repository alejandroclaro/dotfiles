local function configure()
  local configuration = {}

  configuration.adapters = {
    require('neotest-gtest').setup({}),
    require('neotest-jest')({}),
    require('neotest-python')({})
  }

  require('neotest').setup(configuration)
end

local function setup(use)
  local requires = {
    'alfaix/neotest-gtest',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-neotest/neotest-jest',
    'nvim-neotest/neotest-python',
    'nvim-treesitter/nvim-treesitter'
  }

  use({ 'stevearc/aerial.nvim', config = configure, requires = requires })
end

return { setup = setup }

