function _G.setup_highlight()
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
end

local function configure()
  local highlight = {
    "RainbowGreen",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowViolet",
    "RainbowOrange",
    "RainbowCyan",
    "RainbowRed"
  }

  local exclude_types = {
    'dashboard',
    'help',
    'mason',
    'neo-tree',
    'notify',
    'toggleterm'
  }

  local configuration = {
    scope   = { enabled = true, highlight = highlight },
    exclude = { filetypes = exclude_types }
  }

  local hooks = require('ibl.hooks')

  hooks.register(hooks.type.HIGHLIGHT_SETUP, _G.setup_highlight)
  vim.g.rainbow_delimiters = { highlight = highlight }

  require('ibl').setup(configuration)
  hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
end

local function setup(use)
  use({ 'lukas-reineke/indent-blankline.nvim', config = configure, after = 'rainbow-delimiters.nvim' })
end

return { setup = setup }
