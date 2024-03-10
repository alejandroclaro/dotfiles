local function setup(keymap)
  keymap.normal.set('<leader>e', '<cmd>Neotree toggle<cr>', 'Toggle file explorer')
  keymap.normal.set('<leader>E', '<cmd>Neotree reveal<cr>', 'Reveal buffer file in explorer')
end

return { setup = setup }
