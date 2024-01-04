local map = vim.keymap.set

-- leader keys
vim.g.mapleader      = " "
vim.g.maplocalleader = '\\'

-- tmux navigation
if os.getenv('TMUX') then
  map('n', '<C-h>', '<cmd>TmuxNavigateLeft<cr>')
  map('n', '<C-j>', '<cmd>TmuxNavigateDown<cr>')
  map('n', '<C-k>', '<cmd>TmuxNavigateUp<cr>')
  map('n', '<C-l>', '<cmd>TmuxNavigateRight<cr>')
end

-- windows navigation
map('', '<C-h>', '<C-w>h')
map('', '<C-j>', '<C-w>j')
map('', '<C-k>', '<C-w>k')
map('', '<C-l>', '<C-w>l')

map('n', '<Tab>', '<cmd>bnext<cr>')
map('n', '<S-Tab>', '<cmd>bprevious<cr>')

for i=1,4 do
  map('n', '<leader>' .. i, '<cmd>' .. i .. 'wincmd w<cr>')
end

-- buffer navigation
map('n', '<Left>', '<cmd>echoe "Use h"<cr>')
map('i', '<Left>', '<nop>')

map('n', '<Right>', '<cmd>echoe "Use l"<cr>')
map('i', '<Right>', '<nop>')

map('n', '<Up>', '<cmd>echoe "Use k"<cr>')
map('i', '<Up>', '<nop>')

map('n', '<Down>', '<cmd>echoe "Use j"<cr>')
map('i', '<Down>', '<nop>')

map('i', 'jk', '<ESC>')
map('i', 'kj', '<ESC>')

map({ 'n', 'x' }, 's'        , '<Plug>(easymotion-s)')
map({ 'n', 'x' }, 'S'        , '<Plug>(easymotion-bd-t)')
map({ 'n'      }, '<leader>j', '<Plug>(easymotion-j)')
map({ 'n'      }, '<leader>k', '<Plug>(easymotion-k)')

-- searching
map('n', '<leader>/', '<cmd>set hlsearch!<cr>', { silent = true })

-- delete, cut, copy, and paste
map('n', 'D', 'd$', { silent = true })

map('n', '<leader>u', '<cmd>UndotreeToggle<cr>')
map('n', '<leader>W', '<cmd>Trim<cr>')

map('n', 'Y'        , 'y$'   , { silent = true })
map('n', '<leader>y', '"+y'  , { silent = true })
map('v', '<leader>y', '"+ygv', { silent = true })
map('n', '<leader>Y', '"+Y'  , { silent = true })

map('n', '<leader>p', '"+p', { silent = true })
map('n', '<leader>P', '"+P', { silent = true })

-- macros
map('n', 'Q', '@q')
map('v', 'Q', '<cmd>norm @q<cr>')

-- file management
map('n', '<leader>n', '<cmd>Neotree toggle<cr>')
map('n', '<leader>N', '<cmd>Neotree reveal<cr>')

map('n', '<leader>b', '<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>', { silent = true })
map('n', '<C-t>',     '<cmd>Telescope find_files<cr>', { silent = true })

-- commandline
map('n', '<leader>:', '<cmd>Telescope command_history<cr>', { silent = true })

