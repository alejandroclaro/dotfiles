function _G.starter_telescope_items()
  local find_files = function() require('telescope.builtin').find_files({ silent = true }) end
  local live_grep = function() require('telescope.builtin').live_grep({ silent = true }) end

  return {
    {
      name = 'Find files',
      section = 'Files',
      action = find_files
    },
    {
      name = 'Search in files',
      section = 'Files',
      action = live_grep
    }
  }
end

local function configure()
  local starter = require('mini.starter')
  local configuration = {}

  configuration.content_hooks = { starter.gen_hook.adding_bullet(), starter.gen_hook.aligning('center', 'center') }
  configuration.items = {
    _G.starter_telescope_items(),
    starter.sections.sessions(5, true),
    starter.sections.builtin_actions()
  }

  starter.setup(configuration)
end

local function setup(use)
  local after = { 'telescope.nvim' }

  use({ 'echasnovski/mini.starter', config = configure, branch = 'stable', after = after })
end

return { setup = setup }
