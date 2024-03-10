local function setup(map)
  if os.getenv('TMUX') then
    map.normal.set('<C-h>', '<cmd>TmuxNavigateLeft<cr>', 'Navigate to window left')
    map.normal.set('<C-j>', '<cmd>TmuxNavigateDown<cr>', 'Navigate to window below')
    map.normal.set('<C-k>', '<cmd>TmuxNavigateUp<cr>', 'Navigate to window above')
    map.normal.set('<C-l>', '<cmd>TmuxNavigateRight<cr>', 'Navigate to window right', { unique = false })
  else
    map.normal.set('<C-h>', '<C-w>h', 'Navigate to window left')
    map.normal.set('<C-j>', '<C-w>j', 'Navigate to window below')
    map.normal.set('<C-k>', '<C-w>k', 'Navigate to window above')
    map.normal.set('<C-l>', '<C-w>l', 'Navigate to window right', { unique = false })
  end

  map.normal.set('<Tab>', '<cmd>bnext<cr>', 'Next buffer')
  map.normal.set('<S-Tab>', '<cmd>bprevious<cr>', 'Previous buffer')

  for i = 1, 5 do
    map.normal.set('<leader>' .. i, '<cmd>' .. i .. 'wincmd w<cr>', 'Navigate to ' .. i .. ' window')
  end

  map.normal.set('<leader>|', '<C-W>v', 'Split window right')
  map.normal.set('<leader>-', '<C-W>s', 'Split window below')

  map.normal.set('<C-Up>', '<cmd>resize +2<cr>', 'Increase window height')
  map.normal.set('<C-Down>', '<cmd>resize -2<cr>', 'Decrease window height')
  map.normal.set('<C-Left>', '<cmd>vertical resize -2<cr>', 'Decrease window width')
  map.normal.set('<C-Right>', '<cmd>vertical resize +2<cr>', 'Increase window width')
end

return { setup = setup }
