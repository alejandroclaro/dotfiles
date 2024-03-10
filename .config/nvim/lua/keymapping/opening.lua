function _G.toogle_diagnostics_list()
  local window = vim.api.nvim_get_current_win()

  vim.diagnostic.setloclist({ open = false })
  vim.cmd.lwindow()
  vim.api.nvim_set_current_win(window)
end

local function setup(keymap)
  keymap.normal.add_group('<leader>o', '+Open')

  keymap.normal.set('<leader>od', _G.toogle_diagnostics_list, 'Open diagnostics list window')
  keymap.normal.set('<leader>ol', '<cmd>lopen<cr>', 'Open location list window')
  keymap.normal.set('<leader>oq', '<cmd>copen<cr>', 'Open quickfix list window')
  keymap.normal.set('<leader>ou', '<cmd>Telescope undo<cr>', 'Open undo tree window')
end

return { setup = setup }
