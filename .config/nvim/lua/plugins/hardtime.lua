local function configure()
  require('hardtime').setup()
end

local function setup(use)
  use({ 'm4xshen/hardtime.nvim', config = configure, requires = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' } })
end

return { setup = setup }
