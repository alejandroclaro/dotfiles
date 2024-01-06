local map = vim.keymap.set

-- leader keys
vim.g.mapleader      = ' '
vim.g.maplocalleader = '\\'

-- windows navigation
map('', '<C-h>', '<C-w>h', { desc = 'Navigate to window left'  })
map('', '<C-j>', '<C-w>j', { desc = 'Navigate to window below' })
map('', '<C-k>', '<C-w>k', { desc = 'Navigate to window above' })
map('', '<C-l>', '<C-w>l', { desc = 'Navigate to window right' })

if os.getenv('TMUX') then
  map('n', '<C-h>', '<cmd>TmuxNavigateLeft<cr>',  { desc = 'Navigate to window left'  })
  map('n', '<C-j>', '<cmd>TmuxNavigateDown<cr>',  { desc = 'Navigate to window below' })
  map('n', '<C-k>', '<cmd>TmuxNavigateUp<cr>',    { desc = 'Navigate to window above' })
  map('n', '<C-l>', '<cmd>TmuxNavigateRight<cr>', { desc = 'Navigate to window right' })
end

map('n', '<Tab>', '<cmd>bnext<cr>',       { desc = 'Next buffer'     })
map('n', '<S-Tab>', '<cmd>bprevious<cr>', { desc = 'Previous buffer' })

for i=1,4 do
  map('n', '<leader>' .. i, '<cmd>' .. i .. 'wincmd w<cr>', { desc = 'Navigate to' .. i .. 'window' })
end

-- window helpers
map('n', '<leader>|', '<C-W>v', { desc = 'Split window right' })
map('n', '<leader>-', '<C-W>s', { desc = 'Split window below' })

map('n', '<C-Up>',    '<cmd>resize +2<cr>',          { desc = 'Increase window height' })
map('n', '<C-Down>',  '<cmd>resize -2<cr>',          { desc = 'Decrease window height' })
map('n', '<C-Left>',  '<cmd>vertical resize -2<cr>', { desc = 'Decrease window width'  })
map('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase window width'  })

-- buffer navigation
map('n', '<Left>', '<cmd>echoe "Use h"<cr>', { desc = 'Disable Left key' })
map('i', '<Left>', '<nop>',                  { desc = 'Disable Left key' })

map('n', '<Right>', '<cmd>echoe "Use l"<cr>', { desc = 'Disable Right key' })
map('i', '<Right>', '<nop>',                  { desc = 'Disable Right key' })

map('n', '<Up>', '<cmd>echoe "Use k"<cr>', { desc = 'Disable Up key' })
map('i', '<Up>', '<nop>',                  { desc = 'Disable Up key' })

map('n', '<Down>', '<cmd>echoe "Use j"<cr>', { desc = 'Disable Down key' })
map('i', '<Down>', '<nop>',                  { desc = 'Disable Down key' })

map('i', 'jk', '<ESC>', { desc = 'Quick edit mode exit' })
map('i', 'kj', '<ESC>', { desc = 'Quick edit mode exit' })

map({ 'n', 'x' }, 's'        , '<Plug>(easymotion-s)',    { desc = 'Fast motion on character'        })
map({ 'n', 'x' }, 'S'        , '<Plug>(easymotion-bd-t)', { desc = 'Fast motion to before character' })
map({ 'n'      }, '<leader>j', '<Plug>(easymotion-j)',    { desc = 'Fast motion to line above'       })
map({ 'n'      }, '<leader>k', '<Plug>(easymotion-k)',    { desc = 'Fast motion to line below'       })

map('n', '<leader>bd', function() require("mini.bufremove").wipeout(0, false) end, { desc = 'Wipeout the buffer'          })
map('n', '<leader>bD', function() require("mini.bufremove").wipeout(0, true) end,  { desc = 'Wipeout the buffer (force)'  })
map('n', '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>',                           { desc = 'Delete other buffers'        })
map('n', '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>',                             { desc = 'Delete buffers to the left'  })
map('n', '<leader>br', '<Cmd>BufferLineCloseRight<CR>',                            { desc = 'Delete buffers to the right' })

-- delete, cut, copy, and paste
map('n', '<leader>u', '<cmd>UndotreeToggle<cr>', { desc = 'Toggle undo window' })

map('n', '<leader>W', '<cmd>Trim<cr>', { desc = 'Delete trailing white spaces'               })
map('n', 'D',         'd$',            { desc = 'Delete the rest of the line', silent = true })

map('n', 'Y'        , 'y$',    { desc = 'Yank rest of the line',              silent = true })
map('n', '<leader>Y', '"+Y'  , { desc = 'Yank rest of the line to clipboard', silent = true })
map('n', '<leader>y', '"+y'  , { desc = 'Yank to clipboard',                  silent = true })
map('v', '<leader>y', '"+ygv', { desc = 'Yank to clipboard',                  silent = true })

map('n', '<leader>p', '"+p', { desc = 'Paste from clipboard on cursor',     silent = true })
map('n', '<leader>P', '"+P', { desc = 'Paste from clipboard before cursor', silent = true })

map('n', '<A-j>', '<cmd>m .+1<cr>==',        { desc = 'Move line down' })
map('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move line down' })
map('v', '<A-j>', ':m \'>+1<cr>gv=gv',       { desc = 'Move selection down' })

map('n', '<A-k>', '<cmd>m .-2<cr>==',        { desc = 'Move line up' })
map('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move line up' })
map('v', '<A-k>', ':m \'<-2<cr>gv=gv',       { desc = 'Move selection up' })

-- searching
map('n', '<leader>ss', '<cmd>Telescope current_buffer_fuzzy_find<cr>',                    { desc = 'Fuzzy find text'          })
map('n', '<leader>sb', '<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>',     { desc = 'Buffer'                   })
map('n', '<leader>sf', '<cmd>Telescope git_files<cr>',                                    { desc = 'Git file'                 })
map('n', '<leader>sg', '<cmd>Telescope live_grep<cr>',                                    { desc = 'Grep from cwd'            })
map('n', '<leader>sw', '<cmd>Telescope grep_string<cr>',                                  { desc = 'Grep current word in cwd' })
map('n', '<leader>sh', '<cmd>Telescope command_history<cr>',                              { desc = 'Command history'          })
map('n', '<leader>sc', '<cmd>Telescope git_bcommits<cr>',                                 { desc = 'Git commits'              })

map('n', '<C-t>', '<cmd>Telescope find_files hidden=true no_ignore_parent=true<cr>', { desc = 'Find files' })

map('n', '<leader>/',  '<cmd>Telescope resume<cr>', { desc = 'Resume last search' })

-- macros
map('n', 'Q', '@q',               { desc = 'Run macro in q register' })
map('v', 'Q', '<cmd>norm @q<cr>', { desc = 'Run macro in q register' })

-- quickfix, location, and diagnostic lists
map('n', '<leader>ol', '<cmd>TroubleToggle loclist<cr>',  { desc = 'Open location list window' })
map('n', '<leader>oq', '<cmd>TroubleToggle quickfix<cr>', { desc = 'Open quickfix list window' })

map('n', '<leader>ox', '<cmd>TroubleToggle document_diagnostics<cr>', { desc = 'Open diagnostics list window' })
map('n', ']d',         vim.diagnostic.goto_next,                      { desc = 'Next Diagnostic'              })
map('n', '[d',         vim.diagnostic.goto_prev,                      { desc = 'Prev Diagnostic'              })

-- file management
map('n', '<leader>e', '<cmd>Neotree toggle<cr>', { desc = 'Toggle file explorer' })
map('n', '<leader>E', '<cmd>Neotree reveal<cr>', { desc = 'Reveal buffer fle in explorer' })

-- language specific
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    -- go to
    map('n', 'gd', '<cmd>Telescope lsp_definitions reuse_win=true<cr>',     { desc = 'Goto declaration'    })
    map('n', 'gI', '<cmd>Telescope lsp_implementations reuse_win=true<cr>', { desc = 'Goto implementation' })
    map('n', 'gr', '<cmd>Telescope lsp_references<cr>',                     { desc = 'Goto references' })
    map('n', 'gs', '<cmd>Telescope aerial<cr>',                             { desc = 'Goto symbol' })

    map('n', '<M-Down>', '<cmd>AerialNext<cr>', { desc = 'Goto next symbol' })
    map('n', '<M-Up>',   '<cmd>AerialPrev<cr>', { desc = 'Goto previous symbol' })

    map('n', '<leader><Tab>', '<cmd>ClangdSwitchSourceHeader<cr>', { desc = 'Alternate source/header' })

    -- refactor
    map({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code action' })

    map({ 'n', 'v' }, '<leader>cf', '<cmd>Format<cr>', { desc = 'Code format' })
    map({ 'n', 'v' }, '<C-f>',      '<cmd>Format<cr>', { desc = 'Code format' })
  end
})

