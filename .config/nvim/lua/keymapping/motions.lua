local function setup(keymap)
  keymap.normal.set('<Left>', '<cmd>echoe "Use h"<cr>', 'Disable Left key')
  keymap.insert.set('<Left>', '<nop>','Disable Left key')

  keymap.normal.set('<Right>', '<cmd>echoe "Use l"<cr>', 'Disable Right key')
  keymap.insert.set('<Right>', '<nop>', 'Disable Right key')

  keymap.normal.set('<Up>', '<cmd>echoe "Use k"<cr>', 'Disable Up key')
  keymap.insert.set('<Up>', '<nop>', 'Disable Up key')

  keymap.normal.set('<Down>', '<cmd>echoe "Use j"<cr>', 'Disable Down key')
  keymap.insert.set('<Down>', '<nop>', 'Disable Down key')

  keymap.insert.set('jk', '<ESC>', 'Quick edit mode exit')
  keymap.insert.set('kj', '<ESC>', 'Quick edit mode exit')

  keymap.normal.set('s', '<cmd>HopChar1MW<cr>', 'Fast motion on character')
  keymap.normal.set('S', '<cmd>HopWordMW<cr>', 'Fast motion to a word')
  keymap.normal.set('<leader>j', '<cmd>HopLineAC<cr>', 'Fast motion to line below')
  keymap.normal.set('<leader>k', '<cmd>HopLineBC<cr>', 'Fast motion to line above')
end

return { setup = setup }
