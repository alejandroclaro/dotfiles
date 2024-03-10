local function setup(keymap, buffer)
  local options = { buffer = buffer }

  if (keymap.has_map('<localleader>de', 'n')) then
    return;
  end

  keymap.normal.add_group('<localleader>', '+Development', options)
  keymap.visual.add_group('<localleader>', '+Development', options)

  keymap.normal.add_group('<localleader>d', '+Debugging', options)
  keymap.visual.add_group('<localleader>d', '+Debugging', options)

  keymap.set({ 'n', 'v' }, '<localleader>de', function() require('dapui').eval() end, 'Eval expression under cursor', options)

  keymap.normal.set('<localleader>dc', function() require('dap').continue() end, 'Continue', options)
  keymap.normal.set('<localleader>dp', function() require('dap').pause() end, 'Pause', options)
  keymap.normal.set('<localleader>dr', function() require('dap').repl.toggle() end, 'Toogle REPL', options)
  keymap.normal.set('<localleader>dt', function() require('dap').terminate() end, 'Terminate', options)
  keymap.normal.set('<localleader>du', function() require('dapui').toggle({}) end, 'Open debug windows', options)

  keymap.normal.set('<localleader>ds', function() require('dap').step_over() end, 'Step over', options)
  keymap.normal.set('<localleader>di', function() require('dap').step_into() end, 'Step into', options)
  keymap.normal.set('<localleader>do', function() require('dap').step_out() end, 'Step out', options)

  keymap.normal.set('<localleader>db', function() require('dap').toggle_breakpoint() end, 'Toggle breakpoint', options)
end

return { setup = setup }
