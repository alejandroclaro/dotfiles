local function configure()
  local dracula       = require('dracula')
  local colors        = dracula.colors()
  local bg            = '#303030'
  local configuration = {}

  configuration.colors         = { bg = bg }
  configuration.transparent_bg = true

  dracula.setup(configuration)

  vim.cmd('colorscheme dracula')
  vim.api.nvim_set_hl(0, 'BufferLineFill', { bg = colors.selection })
  vim.api.nvim_set_hl(0, 'ColorColumn',    { bg = colors.selection })
end

local function setup(use)
  use({ 'Mofiqul/dracula.nvim', config = configure })
end

return { setup = setup }
