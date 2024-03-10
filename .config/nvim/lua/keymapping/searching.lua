local function setup(keymap)
  keymap.normal.add_group('<leader>s', '+Search')

  keymap.normal.set('<leader>ss', '<cmd>Telescope current_buffer_fuzzy_find<cr>', 'Fuzzy find text')
  keymap.normal.set('<leader>sb', '<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>', 'Buffer')
  keymap.normal.set('<leader>sf', '<cmd>Telescope git_files<cr>', 'Git file')
  keymap.normal.set('<leader>sg', '<cmd>Telescope live_grep<cr>', 'Grep from cwd')
  keymap.normal.set('<leader>sw', '<cmd>Telescope grep_string<cr>', 'Grep current word in cwd')
  keymap.normal.set('<leader>sh', '<cmd>Telescope command_history<cr>', 'Command history')
  keymap.normal.set('<leader>sc', '<cmd>Telescope git_bcommits<cr>', 'Git commits')

  keymap.normal.set('<C-t>', '<cmd>Telescope find_files hidden=true no_ignore_parent=true<cr>', 'Find files')

  keymap.normal.set('<leader>/',  '<cmd>Telescope resume<cr>', 'Resume last search')
end

return { setup = setup }
