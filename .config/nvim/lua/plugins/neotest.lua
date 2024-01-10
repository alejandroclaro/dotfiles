function _G.gtest_is_test_file(path)
  local lib              = require('neotest.lib')
  local elements         = vim.split(path, lib.files.sep, { plain = true })
  local filename         = elements[#elements]
  local result           = false
  local valid_extensions = { ['cpp'] = true, ['cc']  = true, ['cxx'] = true, ['c++'] = true }

  if filename ~= '' then
    local parts     = vim.split(filename, '.', { plain = true })
    local extension = parts[#parts]
    local name      = parts[#parts - 1]

    result = (valid_extensions[extension] and vim.endswith(name, 'Test')) or false
  end

  return result
end

function _G.jtest_is_test_file(path)
  local lib        = require('neotest.lib')
  local elements   = vim.split(path, lib.files.sep, { plain = true })
  local filename   = elements[#elements]
  local extensions = { 'test.js', 'test.ts',  'test.jsx', 'test.tsx' }

  for _, x in ipairs(extensions) do
    if string.match(filename, '%.' .. x .. '$') then
      return true
    end
  end

  return false
end

function _G.jtest_config_file(path)
  local directory = vim.fn.fnamemodify(path, ':h')
  local lib       = require('neotest.lib')
  local finder    = lib.files.match_root_pattern('jest.config.*')
  local result    = finder(directory or '.')

  if result then
    local ts_config = result .. lib.files.sep .. 'jest.config.ts'
    local js_config = result .. lib.files.sep .. 'jest.config.js'

    if lib.files.exists(ts_config) then
      return ts_config
    elseif lib.files.exists(js_config) then
      return js_config
    end
  end

  return result
end

function _G.jtest_cwd(path)
  local config = _G.jtest_config_file(path)
  local result = vim.fn.fnamemodify(config, ':h')

  return result
end

function _G.neotest_filter_dir(name)
  return (name ~= 'build') and (name ~= 'examples')
end

local function configure()
  local configuration  = {}
  local gtest_adapter  = require('neotest-gtest').setup({ filter_dir = _G.neotest_filter_dir, is_test_file = _G.gtest_is_test_file, mappings = { configure = 'C' } })
  local jest_adapter   = require('neotest-jest')({ jestCommand = 'yarn run jest', jestConfigFile = _G.jtest_config_file, cwd = _G.jtest_cwd })
  local pytest_adapter = require('neotest-python')({})

  jest_adapter.is_test_file = _G.jtest_is_test_file

  configuration.adapters   = { gtest_adapter, jest_adapter, pytest_adapter }

  require('neotest').setup(configuration)
end

local function setup(use)
  local requires = {
    'alfaix/neotest-gtest',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-neotest/neotest-jest',
    'nvim-neotest/neotest-python',
    'nvim-treesitter/nvim-treesitter'
  }

  use({ 'nvim-neotest/neotest', config = configure, requires = requires })
end

return { setup = setup }

