local function setup(keymap)
  keymap.normal.set('<leader>t', '<cmd>Trim<cr>', 'Trim trailing white spaces')
  keymap.normal.set('D', 'd$', 'Delete the rest of the line')

  keymap.normal.set('<leader>Y', '"+Y', 'Yank rest of the line to clipboard')
  keymap.normal.set('<leader>y', '"+y', 'Yank to clipboard')
  keymap.visual.set('<leader>y', '"+ygv', 'Yank to clipboard')

  keymap.normal.set('<leader>p', '"+p', 'Paste from clipboard on cursor')
  keymap.normal.set('<leader>P', '"+P', 'Paste from clipboard before cursor')

  keymap.normal.set('<A-j>', '<cmd>m .+1<cr>==', 'Move line down')
  keymap.insert.set('<A-j>', '<esc><cmd>m .+1<cr>==gi', 'Move line down')
  keymap.visual.set('<A-j>', ":m '>+1<cr>gv=gv", 'Move selection down')

  keymap.normal.set('<A-k>', '<cmd>m .-2<cr>==', 'Move line up')
  keymap.insert.set('<A-k>', '<esc><cmd>m .-2<cr>==gi', 'Move line up')
  keymap.visual.set('<A-k>', ":m '<-2<cr>gv=gv", 'Move selection up')
end

return { setup = setup }
