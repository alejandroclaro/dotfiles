local function configure()
  local configuration = {}

  require('hop').setup(configuration)
end

local function setup(use)
  use({ 'phaazon/hop.nvim', config = configure, branch = 'v2' })
end

return { setup = setup }
