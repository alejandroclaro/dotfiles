local function configure()
  local cmp_autopairs = require('nvim-autopairs.completion.cmp')
  local cmp = require('cmp')
  local configuration = {}

  cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

  configuration.check_ts = true;

  require('nvim-autopairs').setup(configuration)
end

local function setup(use)
  local after = { 'nvim-cmp' }

  use({ 'windwp/nvim-autopairs', config = configure, after = after })
end

return { setup = setup }
