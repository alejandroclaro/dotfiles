local function install_packer()
  local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd('packadd packer.nvim')
  end
end

local function setup_plugins_manager(use)
  use({ 'wbthomason/packer.nvim' })
  require('plugins.mason').setup(use)
end

local function setup_ui_plugins(use)
  require('plugins.bufferline').setup(use)
  require('plugins.dracula').setup(use)
  require('plugins.dressing').setup(use)
  require('plugins.indent-blankline').setup(use)
  require('plugins.lsp-progress').setup(use)
  require('plugins.lualine').setup(use)
  require('plugins.nvim-colorizer').setup(use)
  require('plugins.nvim-notify').setup(use)
  require('plugins.nvim-web-devicons').setup(use)
  require('plugins.rainbow-delimiters').setup(use)
  require('plugins.which-key').setup(use)
end

local function setup_filesystem_plugins(use)
  require('plugins.neo-tree').setup(use)
end

local function setup_navigation_plugins(use)
  require('plugins.vim-tmux-navigation').setup(use)
  require('plugins.vim-easymotion').setup(use)
end

local function setup_editor_plugins(use)
  require('plugins.hardtime').setup(use)
  require('plugins.mini-pairs').setup(use)
  require('plugins.mini-surround').setup(use)
  require('plugins.mini-bufremove').setup(use)
  require('plugins.telescope').setup(use)
  require('plugins.trim').setup(use)
  require('plugins.undotree').setup(use)
  require('plugins.vim-unimpaired').setup(use)
end

local function setup_coding_plugins(use)
  require('plugins.conform').setup(use)
  require('plugins.nvim-cmp').setup(use)
  require('plugins.nvim-lint').setup(use)
  require('plugins.mason-nvim-lint').setup(use)
  require('plugins.nvim-treesitter').setup(use)
  require('plugins.mason-lspconfig').setup(use)
  require('plugins.nvim-lspconfig').setup(use)
  require('plugins.trouble').setup(use)
  require('plugins.comment').setup(use)
  require('plugins.lua-snip').setup(use)
  require('plugins.aerial').setup(use)
  require('plugins.neotest').setup(use)
  require('plugins.neodev').setup(use)
end

local function setup_debugging_plugins(use)
  require('plugins.nvim-dap').setup(use)
  require('plugins.nvim-dap-ui').setup(use)
  require('plugins.mason-nvim-dap').setup(use)
end

local function setup_vcs_plugins(use)
  require('plugins.vim-fugitive').setup(use)
  require('plugins.gitsigns').setup(use)
end

local function setup_assistance_plugins(use)
  require('plugins.chatgpt').setup(use)
end

local function setup(use)
  setup_plugins_manager(use)
  setup_ui_plugins(use)
  setup_navigation_plugins(use)
  setup_editor_plugins(use)
  setup_coding_plugins(use)
  setup_debugging_plugins(use)
  setup_filesystem_plugins(use)
  setup_vcs_plugins(use)
  setup_assistance_plugins(use)
end

install_packer()

local has_packer, packer = pcall(require, 'packer')

if has_packer then
  packer.startup(setup)
else
  vim.notify('Packer not installed!')
end
