local function setup(keymap, buffer)
  local options = { buffer = buffer }

  if (keymap.has_map('gd', 'n')) then
    return;
  end

  keymap.normal.add_group('<localleader>', '+Development', options)
  keymap.visual.add_group('<localleader>', '+Development', options)

  keymap.normal.add_group('<localleader>c', '+Coding', options)
  keymap.visual.add_group('<localleader>c', '+Coding', options)

  vim.bo[buffer].omnifunc = 'v:lua.vim.lsp.omnifunc'

  -- go to
  keymap.normal.set('gd', '<cmd>Lspsaga goto_definition<cr>', 'Goto definition/declaration', options)
  keymap.normal.set('gr', '<cmd>Telescope lsp_references<cr>', 'Goto references', options)
  keymap.normal.set('gR', '<cmd>Lspsaga finder<cr>', 'Find references', options)
  keymap.normal.set('gC', '<cmd>Lspsaga incoming_calls<cr>', 'Goto references', options)
  keymap.normal.set('gs', '<cmd>Telescope aerial<cr>', 'Goto symbol', options)

  keymap.normal.set('<M-Down>', '<cmd>AerialNext<cr>', 'Goto next symbol', options)
  keymap.normal.set('<M-Up>', '<cmd>AerialPrev<cr>', 'Goto previous symbol', options)

  keymap.normal.set('<leader><Tab>', '<cmd>ClangdSwitchSourceHeader<cr>', 'Alternate source/header', options)

  -- help and diagnostics
  keymap.normal.set('<leader>ox', '<cmd>TroubleToggle document_diagnostics<cr>', 'Open diagnostics list window', options)
  keymap.normal.set(']d', '<cmd>Lspsaga diagnostic_jump_next<cr>', 'Next diagnostic', options)
  keymap.normal.set('[d', '<cmd>Lspsaga diagnostic_jump_prev<cr>', 'Prev diagnostic', options)

  keymap.normal.set('K', '<cmd>Lspsaga hover_doc<cr>', 'Show documentation', { buffer = buffer, unique = false })

  -- coding helpers
  keymap.set({ 'n', 'v' }, '<localleader>cf', '<cmd>Format<cr>', 'Code format current line/selection', options)
  keymap.set({ 'n', 'v' }, '<F2>', '<cmd>Format<cr>', 'Code format current line/selection', options)

  keymap.normal.set('<localleader>cr', '<cmd>Lspsaga rename<cr>', 'Code rename symbol under cursor', options)
  keymap.normal.set('<F3>', '<cmd>Lspsaga rename<cr>', 'Code rename symbol under cursor', options)

  keymap.set({ 'n', 'v' }, '<localleader>ca', '<cmd>Lspsaga code_action<cr>', 'Code Action', options)
  keymap.set({ 'n', 'v' }, '<F4>', '<cmd>Lspsaga code_action<cr>', 'Code action', options)

  keymap.normal.set('<localleader>cp', 'v:lua.MiniSplitjoin.operator("toggle") . " "', 'Split/Join parameters', { buffer = buffer, expr = true })
  keymap.normal.set('<F5>', 'v:lua.MiniSplitjoin.operator("toggle") . " "', 'Split/Join parameters', { buffer = buffer, expr = true })
  keymap.visual.set('<F5>', '<cmd><C-u>lua MiniSplitjoin.toggle({ region = MiniSplitjoin.get_visual_region() })<cr>', 'Split/Join parameters', options)
end

return { setup = setup }
