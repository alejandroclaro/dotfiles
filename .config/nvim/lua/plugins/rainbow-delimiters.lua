local function configure()
  local rainbow_delimiters = require('rainbow-delimiters')

  local strategy = {
    [''] = rainbow_delimiters.strategy['global']
  }

  local query = {
    ['']  = 'rainbow-delimiters',
    lua   = 'rainbow-blocks'
  }

  local configuration = {
    strategy = strategy,
    query    = query,
  }

  require('rainbow-delimiters.setup').setup(configuration)
end

local function setup(use)
  use({ 'HiPhish/rainbow-delimiters.nvim', config = configure })
end

return { setup = setup }
