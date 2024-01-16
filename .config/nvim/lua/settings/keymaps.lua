local map = vim.keymap.set

map('n', '<F1>', '<cmd>WhichKey<cr>', { desc = 'This help' })

-- leader keys
vim.g.mapleader      = ' '
vim.g.maplocalleader = '\\'

-- windows navigation
map('', '<C-h>', '<C-w>h', { desc = 'Navigate to window left' })
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

for i=1,5 do
  map('n', '<leader>' .. i, '<cmd>' .. i .. 'wincmd w<cr>', { desc = 'Navigate to ' .. i .. ' window' })
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

map({ 'n', 'x' }, 's',         '<cmd>HopChar1MW<cr>', { desc = 'Fast motion on character'  })
map({ 'n', 'x' }, 'S',         '<cmd>HopWordMW<cr>',  { desc = 'Fast motion to a word'     })
map({ 'n'      }, '<leader>j', '<cmd>HopLineAC<cr>',  { desc = 'Fast motion to line below' })
map({ 'n'      }, '<leader>k', '<cmd>HopLineBC<cr>',  { desc = 'Fast motion to line above' })

map('n', '<leader>bd', function() require('mini.bufremove').wipeout(0, false) end, { desc = 'Wipeout the buffer'          })
map('n', '<leader>bD', function() require('mini.bufremove').wipeout(0, true) end,  { desc = 'Wipeout the buffer (force)'  })
map('n', '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>',                           { desc = 'Delete other buffers'        })
map('n', '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>',                             { desc = 'Delete buffers to the left'  })
map('n', '<leader>br', '<Cmd>BufferLineCloseRight<CR>',                            { desc = 'Delete buffers to the right' })

-- delete, cut, copy, and paste
map('n', '<leader>t', '<cmd>Trim<cr>', { desc = 'Trim trailing white spaces'                 })
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
map('n', '<leader>ss', '<cmd>Telescope current_buffer_fuzzy_find<cr>',                { desc = 'Fuzzy find text'          })
map('n', '<leader>sb', '<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>', { desc = 'Buffer'                   })
map('n', '<leader>sf', '<cmd>Telescope git_files<cr>',                                { desc = 'Git file'                 })
map('n', '<leader>sg', '<cmd>Telescope live_grep<cr>',                                { desc = 'Grep from cwd'            })
map('n', '<leader>sw', '<cmd>Telescope grep_string<cr>',                              { desc = 'Grep current word in cwd' })
map('n', '<leader>sh', '<cmd>Telescope command_history<cr>',                          { desc = 'Command history'          })
map('n', '<leader>sc', '<cmd>Telescope git_bcommits<cr>',                             { desc = 'Git commits'              })

map('n', '<C-t>', '<cmd>Telescope find_files hidden=true no_ignore_parent=true<cr>', { desc = 'Find files' })

map('n', '<leader>/',  '<cmd>Telescope resume<cr>', { desc = 'Resume last search' })

-- macros
map('n', 'Q', '@q',               { desc = 'Run macro in q register' })
map('v', 'Q', '<cmd>norm @q<cr>', { desc = 'Run macro in q register' })

-- quickfix, location, and undo lists
map('n', '<leader>ol', '<cmd>TroubleToggle loclist<cr>',  { desc = 'Open location list window' })
map('n', '<leader>oq', '<cmd>TroubleToggle quickfix<cr>', { desc = 'Open quickfix list window' })
map('n', '<leader>ou', '<cmd>Telescope undo<cr>',         { desc = 'Open undo tree window'     })

-- file management
map('n', '<leader>e', '<cmd>Neotree toggle<cr>', { desc = 'Toggle file explorer' })
map('n', '<leader>E', '<cmd>Neotree reveal<cr>', { desc = 'Reveal buffer fle in explorer' })

-- language specific
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local buffer = args.buf

    vim.bo[buffer].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- go to
    map('n', 'gd', '<cmd>Lspsaga goto_definition<cr>',  { buffer = buffer, desc = 'Goto definition/declaration'    })
    map('n', 'gr', '<cmd>Telescope lsp_references<cr>', { buffer = buffer, desc = 'Goto references' })
    map('n', 'gR', '<cmd>Lspsaga finder<cr>',           { buffer = buffer, desc = 'Find references' })
    map('n', 'gC', '<cmd>Lspsaga incoming_calls<cr>',   { buffer = buffer, desc = 'Goto references' })
    map('n', 'gs', '<cmd>Telescope aerial<cr>',         { buffer = buffer, desc = 'Goto symbol' })

    map('n', '<M-Down>', '<cmd>AerialNext<cr>', { buffer = buffer, desc = 'Goto next symbol' })
    map('n', '<M-Up>',   '<cmd>AerialPrev<cr>', { buffer = buffer, desc = 'Goto previous symbol' })

    map('n', '<leader><Tab>', '<cmd>ClangdSwitchSourceHeader<cr>', { buffer = buffer, desc = 'Alternate source/header' })

    -- help and diagnostics
    map('n', '<leader>ox', '<cmd>TroubleToggle document_diagnostics<cr>', { buffer = buffer, desc = 'Open diagnostics list window' })
    map('n', ']d',         '<cmd>Lspsaga diagnostic_jump_next<cr>',       { buffer = buffer, desc = 'Next diagnostic'              })
    map('n', '[d',         '<cmd>Lspsaga diagnostic_jump_prev<cr>',       { buffer = buffer, desc = 'Prev diagnostic'              })

    map({ 'n'      }, 'K',     '<cmd>Lspsaga hover_doc<cr>', { buffer = buffer, desc = 'Show documentation' })
    map({ 'n', 'x' }, '<C-k>', vim.lsp.buf.signature_help,   { buffer = buffer, desc = 'Signature Help' })

    -- coding helpers
    map({ 'n', 'v' }, '<localleader>cf', '<cmd>Format<cr>', { buffer = buffer, desc = 'Code format current line/selection' })
    map({ 'n', 'v' }, '<F2>',            '<cmd>Format<cr>', { buffer = buffer, desc = 'Code format current line/selection' })

    map({ 'n' }, '<localleader>cr', '<cmd>Lspsaga rename<cr>', { buffer = buffer, desc = 'Code rename symbol under cursor' })
    map({ 'n' }, '<F3>',            '<cmd>Lspsaga rename<cr>', { buffer = buffer, desc = 'Code rename symbol under cursor' })

    map({ 'n', 'v' }, '<localleader>ca', '<cmd>Lspsaga code_action<cr>', { buffer = buffer, desc = 'Code Action' })
    map({ 'n', 'v' }, '<F4>',            '<cmd>Lspsaga code_action<cr>', { buffer = buffer, desc = 'Code action' })

    map('n', '<leader>cp', 'v:lua.MiniSplitjoin.operator("toggle") . " "', { buffer = buffer, expr = true, desc = 'Split/Join parameters' })
    map('n', '<F5>',       'v:lua.MiniSplitjoin.operator("toggle") . " "', { buffer = buffer, expr = true, desc = 'Split/Join parameters' })
    map('x', '<F5>',       '<cmd><C-u>lua MiniSplitjoin.toggle({ region = MiniSplitjoin.get_visual_region() })<cr>', { buffer = buffer, desc = 'Split/Join parameters' })

   
    -- debugging
    map({ 'n'      }, '<localleader>du', function() require('dapui').toggle({}) end,  { buffer = buffer, desc = 'Open debug windows'           })
    map({ 'n', 'v' }, '<localleader>de', function() require('dapui').eval() end,      { buffer = buffer, desc = 'Eval expression under cursor' })
    map({ 'n'      }, '<localleader>dc', function() require('dap').continue() end,    { buffer = buffer, desc = 'Continue'                     })
    map({ 'n'      }, '<localleader>dp', function() require('dap').pause() end,       { buffer = buffer, desc = 'Pause'                        })
    map({ 'n'      }, '<localleader>dt', function() require('dap').terminate() end,   { buffer = buffer, desc = 'Terminate'                    })
    map({ 'n'      }, '<localleader>dr', function() require('dap').repl.toggle() end, { buffer = buffer, desc = 'Toogle REPL'                  })

    map({ 'n' }, '<localleader>db', function() require('dap').toggle_breakpoint() end, { buffer = buffer, desc = 'Toggle breakpoint' })
    map({ 'n' }, '<localleader>ds', function() require('dap').step_over() end, { buffer = buffer, desc = 'Step over' })
    map({ 'n' }, '<localleader>di', function() require('dap').step_into() end, { buffer = buffer, desc = 'Step into' })
    map({ 'n' }, '<localleader>do', function() require('dap').step_out() end, { buffer = buffer, desc = 'Step out' })

    -- unit tests
    map({ 'n' }, '<localleader>tt', function() require('neotest').run.run() end,                     { buffer = buffer, desc = 'Run test under cursor' })
    map({ 'n' }, '<localleader>td', function() require('neotest').run.run({ strategy = 'dap' }) end, { buffer = buffer, desc = 'Debug test under cursor' })
    map({ 'n' }, '<localleader>tr', function() require('neotest').run.run(vim.fn.expand('%')) end,   { buffer = buffer, desc = 'Run all tests in file' })
    map({ 'n' }, '<localleader>tR', function() require('neotest').run.run(vim.fn.getcwd()) end,      { buffer = buffer, desc = 'Run all tests in workspace' })
    map({ 'n' }, '<localleader>tw', function() require('neotest').watch.toggle('%') end,             { buffer = buffer, desc = 'Watch all tests in file' })
    map({ 'n' }, '<localleader>tw', function() require('neotest').watch.toggle(vim.loop.cwd()) end,  { buffer = buffer, desc = 'Watch all tests in workspace' })
    map({ 'n' }, '<localleader>tk', function() require('neotest').run.stop() end,                    { buffer = buffer, desc = 'Stops (Kills) test execution' })
    map({ 'n' }, '<localleader>ts', function() require('neotest').summary.toggle() end,              { buffer = buffer, desc = 'Toggle tests summary' })
    map({ 'n' }, '<localleader>to', function() require('neotest').output_panel.toggle() end,         { buffer = buffer, desc = 'Toggle test output' })
  end
})

-- AI assistance
map({ 'n' }, '<leader>aa', '<cmd>ChatGPT<cr>', { desc = 'Open AI chat window' })

map({ 'n', 'v' }, '<leader>ad', '<cmd>ChatGPTRun docstring<cr>',                 { desc = 'Document function'         })
map({ 'n', 'v' }, '<leader>ae', '<cmd>ChatGPTEditWithInstruction<cr>',           { desc = 'Edit with instructions'    })
map({ 'n', 'v' }, '<leader>at', '<cmd>ChatGPTRun translate<cr>',                 { desc = 'Translate to English'      })
map({ 'n', 'v' }, '<leader>ag', '<cmd>ChatGPTRun grammar_correction<cr>',        { desc = 'Correct grammar'           })
map({ 'n', 'v' }, '<leader>ak', '<cmd>ChatGPTRun keywords<cr>',                  { desc = 'Extract the main keywords' })
map({ 'n', 'v' }, '<leader>as', '<cmd>ChatGPTRun summarize<cr>',                 { desc = 'Summarize the text'        })
map({ 'n', 'v' }, '<leader>ar', '<cmd>ChatGPTRun code_readability_analysis<cr>', { desc = 'Analyze readability'       })
map({ 'n', 'v' }, '<leader>ax', '<cmd>ChatGPTRun explain_code<cr>',              { desc = 'Explain the code'          })
map({ 'n', 'v' }, '<leader>az', '<cmd>ChatGPTRun add_tests<cr>',                 { desc = 'Add tests'                 })


