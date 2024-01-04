local function configure()
  require('Comment').setup()
end

local function setup(use)
  use({ 'numToStr/Comment.nvim', config = configure })
end

return { setup = setup }
