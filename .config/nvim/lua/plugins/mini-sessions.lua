local function configure()
  require('mini.sessions').setup({ file = 'session.vim' })
end

local function setup(use)
  use({ 'echasnovski/mini.sessions', config = configure, branch = 'stable' })
end

return { setup = setup }
