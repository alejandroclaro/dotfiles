local function configure()
  require('dressing').setup()
end

local function setup(use)
  use({ 'stevearc/dressing.nvim', config = configure })
end

return { setup = setup }
