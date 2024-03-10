local function setup(keymap, buffer)
  local options = { buffer = buffer }

  if (keymap.has_map('<localleader>tt', 'n')) then
    return;
  end

  keymap.normal.add_group('<localleader>', '+Development', options)
  keymap.normal.add_group('<localleader>t', '+Testing', options)

  keymap.normal.set('<localleader>tt', function() require('neotest').run.run() end, 'Run test under cursor', options)
  keymap.normal.set('<localleader>td', function() require('neotest').run.run({ strategy = 'dap' }) end, 'Debug test under cursor', options)
  keymap.normal.set('<localleader>tr', function() require('neotest').run.run(vim.fn.expand('%')) end, 'Run all tests in file', options)
  keymap.normal.set('<localleader>tR', function() require('neotest').run.run(vim.fn.getcwd()) end, 'Run all tests in workspace', options)
  keymap.normal.set('<localleader>tw', function() require('neotest').watch.toggle('%') end, 'Watch all tests in file', options)
  keymap.normal.set('<localleader>tW', function() require('neotest').watch.toggle(vim.loop.cwd()) end, 'Watch all tests in workspace', options)
  keymap.normal.set('<localleader>tk', function() require('neotest').run.stop() end, 'Stops (Kills) test execution', options)
  keymap.normal.set('<localleader>ts', function() require('neotest').summary.toggle() end, 'Toggle tests summary', options)
  keymap.normal.set('<localleader>to', function() require('neotest').output_panel.toggle() end, 'Toggle test output', options)
end

return { setup = setup }
