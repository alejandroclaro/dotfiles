local function configure()
  require('gitsigns').setup()
end

local function setup(use)
  use({ 'lewis6991/gitsigns.nvim', config = configure })
end


return { setup = setup }
