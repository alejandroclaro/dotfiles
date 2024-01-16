local function configure()
  require('mini.align').setup()
end

local function setup(use)
  use({ 'echasnovski/mini.align', config = configure, branch = 'stable' })
end

return { setup = setup }
