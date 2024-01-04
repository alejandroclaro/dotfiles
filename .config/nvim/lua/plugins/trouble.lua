local function configure()
  require('trouble').setup()
end

local function setup(use)
  use({ 'folke/trouble.nvim', config = configure, requires = 'nvim-tree/nvim-web-devicons' })
end

return { setup = setup }
