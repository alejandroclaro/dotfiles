local function configure()
  require('mason').setup()
end

local function setup(use)
  use({ 'williamboman/mason.nvim', config = configure })
end

return { setup = setup }
