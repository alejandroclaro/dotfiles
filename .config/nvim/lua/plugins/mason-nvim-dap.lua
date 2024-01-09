function _G.dap_prompt_args()
  return vim.split(vim.fn.input('Arguments: ', ''), ' ', true)
end

function _G.dap_prompt_executable()
  return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
end

function _G.dap_prompt_server()
  return vim.fn.input('IP and port: ', '')
end

function _G.dap_prompt_sysroot()
  local path   = vim.fn.input('Path to sysroot: ', '', 'file')
  local result = ''

  if path ~= '' then
    result = 'set sysroot "' .. path .. '"'
  end

  return result
end

function _G.dap_gdb_setup(config)
  local gdb_pretty_print = {
    description = 'enable pretty printing',
    text = '-enable-pretty-printing',
    ignoreFailures = false
  }

  local gdb_sysroot = {
    description = 'remote sysroot',
    text = _G.dap_prompt_sysroot,
    ignoreFailures = false
  }

  local gdb_launch = {
    name          = 'Launch application',
    type          = 'cppdbg',
    request       = 'launch',
    cwd           = '${workspaceFolder}',
    program       = _G.dap_prompt_executable,
    stopAtEntry   = true,
    setupCommands = { gdb_pretty_print }
  }

  local gdb_launch_with_arguments = {
    name          = 'Launch with arguments',
    type          = 'cppdbg',
    request       = 'launch',
    cwd           = '${workspaceFolder}',
    program       = _G.dap_prompt_executable,
    args          = _G.dap_prompt_args,
    stopAtEntry   = true,
    setupCommands = { gdb_pretty_print }
  }

  local gdb_attach_process = {
    name          = 'Attach to process',
    type          = 'cppdbg',
    request       = 'attach',
    cwd           = '${workspaceFolder}',
    pid           = require('dap.utils').pick_process,
    setupCommands = { gdb_pretty_print }
  }

  local gdb_attach_remote = {
    name                    = 'Attach to gdbserver',
    type                    = 'cppdbg',
    request                 = 'launch',
    cwd                     = '${workspaceFolder}',
    MIMode                  = 'gdb',
    miDebuggerPath          = '/usr/bin/gdb',
    miDebuggerServerAddress = _G.dap_prompt_server,
    program                 = _G.dap_prompt_executable,
    setupCommands           = { gdb_sysroot, gdb_pretty_print }
  }

  config.configurations = { gdb_launch, gdb_launch_with_arguments, gdb_attach_process, gdb_attach_remote }

  require('mason-nvim-dap').default_setup(config)
end

local function configure()
  local configuration = {}

  configuration.ensure_install = {}
  configuration.automatic_setup = true

  configuration.handlers = {
    function(config) require('mason-nvim-dap').default_setup(config) end,
    cppdbg = dap_gdb_setup
  }

  require('mason-nvim-dap').setup(configuration)
end

local function setup(use)
  use({ 'jay-babu/mason-nvim-dap.nvim', config = configure, after = { 'mason.nvim', 'nvim-dap' } })
end

return { setup = setup }
