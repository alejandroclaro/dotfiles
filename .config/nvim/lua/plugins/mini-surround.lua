local function configure()
  local has_wk, wk    = pcall(require, 'which-key')
  local configuration = {}

  if has_wk then
    wk.register({ ['gS'] = '+surround' })
  end

  configuration.mappings = {
    add            = 'gSa', -- Add surrounding in Normal and Visual modes
    delete         = 'gSd', -- Delete surrounding
    find           = 'gSf', -- Find surrounding (to the right)
    find_left      = 'gSF', -- Find surrounding (to the left)
    highlight      = 'gSh', -- Highlight surrounding
    replace        = 'gSr', -- Replace surrounding
    update_n_lines = 'gSn'  -- Update `n_lines`
  }

  require('mini.surround').setup(configuration)
end

local function setup(use)
  use({ 'echasnovski/mini.surround', config = configure, branch = 'stable', after = 'which-key.nvim' })
end

return { setup = setup }
