local function configure()
  local dap   = require("dap")
  local dapui = require("dapui")

  dapui.setup()

  dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open({}) end
  dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close({}) end
  dap.listeners.before.event_exited["dapui_config"]     = function() dapui.close({}) end
end

local function setup(use)
  use({ 'rcarriga/nvim-dap-ui', config = configure, requires = 'mfussenegger/nvim-dap' })
end

return { setup = setup }
