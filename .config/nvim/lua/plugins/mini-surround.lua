local function configure()
  local configuration = {}

  configuration.mappings = {
    add            = 'gsa', -- Add surrounding in Normal and Visual modes
    delete         = 'gsd', -- Delete surrounding
    find           = 'gsf', -- Find surrounding (to the right)
    find_left      = 'gsF', -- Find surrounding (to the left)
    highlight      = 'gsh', -- Highlight surrounding
    replace        = 'gsr', -- Replace surrounding
    update_n_lines = 'Gsn', -- Update `n_lines`
    suffix_last    = 'l',   -- Suffix to search with "prev" method
    suffix_next    = 'n',   -- Suffix to search with "next" method
  }

  require('mini.surround').setup(configuration)
end

local function setup(use)
  use({ 'echasnovski/mini.surround', config = configure, branch = 'stable' })
end

return { setup = setup }
