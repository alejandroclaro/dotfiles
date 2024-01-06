local function configure()
  local configuration = {
    timeout           = 3000,
    background_colour = '#303030',
    max_height        = function() return math.floor(vim.o.lines * 0.75) end,
    max_width         = function() return math.floor(vim.o.columns * 0.75) end,
    on_open           = function(win) vim.api.nvim_win_set_config(win, { zindex = 100 }) end
  }

  require('notify').setup(configuration)
  vim.notify = require('notify')
end

local function setup(use)
  use({ 'rcarriga/nvim-notify', config = configure })
end
return { setup = setup }
