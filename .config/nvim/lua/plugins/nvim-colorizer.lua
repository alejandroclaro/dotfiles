local function configure()
  require 'colorizer'.setup()
end

local function setup(use)
  use({ 'NvChad/nvim-colorizer.lua', config = configure })
end

return { setup = setup }
