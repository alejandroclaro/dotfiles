local function configure()
  local configuration = {}

  configuration.lightbulb = { enable = false }

  configuration.symbol_in_winbar = {
    enable = false,
    hide_keyword = true,
    show_file = false,
    color_mode = false
  }

  require('lspsaga').setup(configuration)
end

local function setup(use)
  use({ 'nvimdev/lspsaga.nvim', config = configure, after = { 'nvim-lspconfig' } })
end

return { setup = setup }
