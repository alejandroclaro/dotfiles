local function configure()
  local snip = require('luasnip')

  snip.config.set_config({ history = true, updateevents = 'TextChanged,TextChangedI', enable_autosnippets = true })

  require('luasnip.loaders.from_vscode').lazy_load()
end

local function setup(use)
  local requires = 'rafamadriz/friendly-snippets'
  local run      = 'make install_jsregexp'

  use({	'L3MON4D3/LuaSnip', config = configure,	tag = 'v2.*', requires = requires, run = run })
end

return { setup = setup }
