function _G.bufferline_on_add_buffer()
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

  require('bufferline').setup({ options = options, highlights = highlights })

  -- Fix bufferline when restoring a session
  vim.api.nvim_create_autocmd('BufAdd', { callback = _G.bufferline_on_add_buffer })
end

local function setup(use)
  use({ 'akinsho/bufferline.nvim', config = configure, tag = '*', after = { 'dracula.nvim' }, requires = 'nvim-tree/nvim-web-devicons' })
end

return { setup = setup }
