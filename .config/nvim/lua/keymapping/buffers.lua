local function setup(keymap)
  keymap.normal.add_group('<leader>b', '+Buffers')

  keymap.normal.set('<leader>bd', function() require('mini.bufremove').wipeout(0, false) end, 'Wipeout the buffer')
  keymap.normal.set('<leader>bD', function() require('mini.bufremove').wipeout(0, true) end, 'Wipeout the buffer (force)')
  keymap.normal.set('<leader>bo', '<cmd>BufferLineCloseOthers<cr>', 'Delete other buffers')
  keymap.normal.set('<leader>bl', '<cmd>BufferLineCloseLeft<cr>', 'Delete buffers to the left')
  keymap.normal.set('<leader>br', '<cmd>BufferLineCloseRight<cr>', 'Delete buffers to the right')
end

return { setup = setup }
