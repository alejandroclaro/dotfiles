local function setup(keymap)
  keymap.normal.add_group('[',        '+Previous/Enable')
  keymap.normal.add_group(']',        '+Next/Disable')
  keymap.normal.add_group('[o',       '+Enable')
  keymap.normal.add_group(']o',       '+Disable')
  keymap.normal.add_group('<leader>', '+More working shortcuts')
  keymap.normal.add_group('d]',       '+To next unmached group')
  keymap.normal.add_group('d[',       '+To previous unmached group')
  keymap.normal.add_group('dg',       '+To motion')
  keymap.normal.add_group('g',        '+Goto/Commenting/Casing/Surrounding')
  keymap.normal.add_group('y]',       '+To next unmached group')
  keymap.normal.add_group('y[',       '+To previous unmached group')
  keymap.normal.add_group('yg',       '+To motion')
  keymap.normal.add_group('z',        '+Spelling/Folding/Cursor')

  keymap.normal.set('<C-_>', '<cmd>WhichKey<cr>', 'This help')
end

return { setup = setup }
