local function configure()
  require('aerial').setup()
end

local function setup(use)
  use({ 'stevearc/aerial.nvim', config = configure })
end

return { setup = setup }
