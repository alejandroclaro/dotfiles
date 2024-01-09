function _G.build_spell_language_component()
  return function()
    if vim.opt.spell:get() ~= true then
      return ''
    end

    local lang = table.concat(vim.opt_local.spelllang:get(), '/')

    return'SPELL [' .. lang .. ']'
  end
end

function _G.build_diff_component()
  local function get_diff_source()
    local gitsigns = vim.b.gitsigns_status_dict

    if gitsigns then
      return { added = gitsigns.added, modified = gitsigns.changed, removed = gitsigns.removed }
    end
  end

  return { 'diff', sources = get_diff_source }
end

function _G.build_diagnostic_component()
  return { 'diagnostics', symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' } }
end

function _G.build_lsp_component()
  return require('lsp-progress').progress
end

local function configure()
  local configuration = {}

  configuration.options = {
    theme = 'auto',
    icons_enabled = true,
    globalstatus = true,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { statusline = { 'dashboard' } }
  }

  configuration.sections = {
    lualine_a = { { 'mode' }, { _G.build_spell_language_component() } },
    lualine_b = { { 'branch' }, _G.build_diff_component() },
    lualine_c = { { 'filename' }, _G.build_diagnostic_component(), _G.build_lsp_component() },
    lualine_x = { },
    lualine_y = { { 'filetype', icon_only = true }, { 'fileformat', padding = 1 }, { 'encoding', padding = 1 } },
    lualine_z = { { 'progress', padding = 1 }, { 'location', padding = 0 } }
  }

  configuration.extensions = {
    'fugitive',
    'fzf',
    'mason',
    'neo-tree',
    'quickfix',
   'trouble'
  }

  vim.g.lualine_laststatus = vim.o.laststatus

  require('lualine').setup(configuration)

  vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
  vim.api.nvim_create_autocmd("User", { group = "lualine_augroup", pattern = "LspProgressStatusUpdated", callback = require("lualine").refresh })
end

local function setup(use)
  local after    = 'lsp-progress.nvim'
  local requires = 'nvim-tree/nvim-web-devicons'

  use({ 'nvim-lualine/lualine.nvim', config = configure, after = after, requires = requires })
end

return { setup = setup }
