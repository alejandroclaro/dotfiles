local function configure()
  local wk = require("which-key")

  local configuration = {
    plugins = { spelling = true },
    triggers_blacklist = { i = { 'j', 'k' }, v = { 'j', 'k' } }
  }

  wk.setup(configuration)
end

local function setup(use)
  use({ 'folke/which-key.nvim', config = configure })
end

return { setup = setup }
