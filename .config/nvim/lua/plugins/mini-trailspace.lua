local function configure()
  local configuration = {}

  require('mini.trailspace').setup(configuration)
end

local function setup(use)
  use({ 'echasnovski/mini.trailspace', config = configure, branch = 'stable' })
end

return { setup = setup }
