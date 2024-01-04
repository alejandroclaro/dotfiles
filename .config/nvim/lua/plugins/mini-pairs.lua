local function configure()
  require('mini.pairs').setup()
end

local function setup(use)
  use({ 'echasnovski/mini.pairs', config = configure, branch = 'stable' })
end

return { setup = setup }
