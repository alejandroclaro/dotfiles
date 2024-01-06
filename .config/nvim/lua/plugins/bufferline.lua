function _G.on_bufferline_add_buffer()
  vim.schedule(function() pcall(nvim_bufferline) end)
end

local function configure()
  local neotree_offset = { filetype = 'neo-tree', text = 'File explorer', highlight = 'Directory', text_align = 'left' }
  local separators     = { '', '' }

  local options = {
    buffer_close_icon = '',
    show_buffer_close_icons = true,
    separator_style = separators,
    diagnostics = 'nvim_lsp',
    offsets = { neotree_offset }
  }

  vim.o.termguicolors = true
  require('bufferline').setup({ options = options })

  -- Fix bufferline when restoring a session
  vim.api.nvim_create_autocmd('BufAdd', { callback = _G.on_bufferline_add_buffer })
end

local function setup(use)
  use({ 'akinsho/bufferline.nvim', config = configure, tag = '*', requires = 'nvim-tree/nvim-web-devicons' })
end

return { setup = setup }
