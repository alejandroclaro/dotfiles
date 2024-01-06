local function install_packer()
  local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd('packadd packer.nvim')
  end
end

local function setup(use)
  use({ 'wbthomason/packer.nvim' })
  use({ 'nvim-lua/plenary.nvim' })

  local fs          = require('plenary.scandir')
  local path        = require('plenary.path')
  local base_dir    = path:new(vim.fn.stdpath("config")):joinpath('/lua')
  local plugins_dir = base_dir:joinpath('plugins')
  local files       = fs.scan_dir(tostring(plugins_dir), { search_pattern = '%.lua$' })

  for _, file in ipairs(files) do
    local filename    = path:new(file):make_relative(tostring(base_dir))
    local module_name = vim.split(filename, '%.')[1]

    require(module_name).setup(use)
  end
end

install_packer()

local has_packer, packer = pcall(require, 'packer')

if has_packer then
  packer.startup(setup)
else
  vim.notify('Packer not installed!')
end
