function _G.gitsigns_next_hunk()
  local gs = require('gitsigns')

  if vim.wo.diff then
    return ']c'
  end

  vim.schedule(function() gs.next_hunk() end)
  return '<Ignore>'
end

function _G.gitsigns_prev_hunk()
  local gs = require('gitsigns')

  if vim.wo.diff then
    return '[c'
  end

  vim.schedule(function() gs.prev_hunk() end)
  return '<Ignore>'
end

function _G.gitsigns_reset_hunk()
  local gs = require('gitsigns')

  return gs.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
end

function _G.gitsigns_on_attach(buffer)
  local gs = require('gitsigns')
  local wk = require('which-key')

  local function map(mode, l, r, opts)
    opts = opts or {}
    opts.buffer = buffer
    vim.keymap.set(mode, l, r, opts)
  end

  -- Navigation
  map('n', ']c', _G.gitsigns_next_hunk, { expr = true, desc = "Next diff/hunk" })
  map('n', '[c', _G.gitsigns_prev_hunk, { expr = true, desc = "Previous diff/hunk" })

  -- Actions
  wk.register({ ['<leader>h'] = { name = 'Hunks (Git)' } }, { buffer = buffer })
  wk.register({ ['<leader>h'] = { name = 'Hunks (Git)' } }, { buffer = buffer, mode='v' })

  map('n', '<leader>hr', gs.reset_hunk, { desc = 'Reset hunk' })
  map('v', '<leader>hr', _G.gitsigns_reset_hunk, { desc = 'Reset hunk' })
  map('n', '<leader>hp', gs.preview_hunk, { desc = 'Preview hunk' })
  map('n', '<leader>hb', function() gs.blame_line({ full = true }) end, { desc = 'Blame line' })
  map('n', '<leader>hB', gs.toggle_current_line_blame, { desc = 'Blame (toggle lens)' })
  map('n', '<leader>hd', gs.diffthis, { desc = 'Diff against the index' })
  map('n', '<leader>hD', function() gs.diffthis('~') end, { desc = 'Diff against parent' })
  map('n', '<leader>he', gs.toggle_deleted, { desc = 'Toggle deleted hunks' })

  -- Text object
  map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
end

local function configure()
  local configuration = {}

  configuration.on_attach = _G.gitsigns_on_attach

  require('gitsigns').setup(configuration)
end

local function setup(use)
  use({ 'lewis6991/gitsigns.nvim', config = configure, after = 'which-key.nvim' })
end

return { setup = setup }
