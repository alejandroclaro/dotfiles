local function configure()
  local wk = require("which-key")

  local configuration = {
    plugins = { spelling = true },
    triggers_blacklist = { i = { 'j', 'k' }, v = { 'j', 'k' } }
  }

  wk.setup(configuration)

  wk.register({
    ['<leader>b'] = '+Buffer',
    ['<leader>c'] = '+Code',
    ['<leader>s'] = '+Search',
    ['<leader>o'] = '+Open'
  })
end

local function setup(use)
  use({ 'folke/which-key.nvim', config = configure })
end

return { setup = setup }
