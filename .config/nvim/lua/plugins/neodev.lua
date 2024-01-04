local function configure()
  require('neodev').setup()
end

local function setup(use)
  use({ 'folke/neodev.nvim', config = configure, after = 'nvim-lspconfig' })
end

return { setup = setup }


