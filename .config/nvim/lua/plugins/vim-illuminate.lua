local function configure()
  local providers = {
    'lsp',
    'treesitter',
    'regex',
  }

  local should_enable = function()
    return true
  end

  local configuration = {
    providers = providers,
    delay = 100,
    filetype_overrides = {},
    filetypes_denylist = { 'dirbuf', 'neo-tree', 'toggleterm', 'TelescopePrompt' },
    filetypes_allowlist = {},
    modes_denylist = {},
    modes_allowlist = {},
    providers_regex_syntax_denylist = {},
    providers_regex_syntax_allowlist = {},
    under_cursor = true,
    large_file_cutoff = nil,
    large_file_overrides = nil,
    min_count_to_highlight = 2,
    should_enable = should_enable,
    case_insensitive_regex = false,
  }

  require('illuminate').configure(configuration)
end

local function setup(use)
  use({ 'RRethy/vim-illuminate', config = configure })
end

return { setup = setup }
