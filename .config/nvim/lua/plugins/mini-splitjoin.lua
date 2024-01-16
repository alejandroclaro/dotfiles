local function configure()
  local configuration = {}

  configuration.mappings = {
    toggle = '',
    split = '',
    join = '',
  }

  require('mini.splitjoin').setup(configuration)
end

local function setup(use)
  use({ 'echasnovski/mini.splitjoin', config = configure, branch = 'stable' })
end

return { setup = setup }
