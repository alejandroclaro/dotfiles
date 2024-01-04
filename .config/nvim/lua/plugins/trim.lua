local function configure()
  local configuration = {}

  configuration.trim_on_write   = false
  configuration.rim_trailing   = true
  configuration.trim_last_line  = true
  configuration.trim_first_line = true

  require('trim').setup(configuration)
end

local function setup(use)
  use({ 'cappyzawa/trim.nvim', config = configure })
end

return { setup = setup }
