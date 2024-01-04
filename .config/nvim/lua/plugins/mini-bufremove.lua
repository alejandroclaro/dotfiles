local function configure()
  require('mini.bufremove').setup()
end

local function setup(use)
  use({ 'echasnovski/mini.bufremove', config = configure, branch = 'stable' })
end

return { setup = setup }
