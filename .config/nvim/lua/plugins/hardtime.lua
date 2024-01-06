local function configure()
  local configuration = {}

  configuration.restriction_mode = 'hint'

  require('hardtime').setup(configuration)
end

local function setup(use)
  -- use({ 'm4xshen/hardtime.nvim', config = configure, requires = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' } })
end

return { setup = setup }
