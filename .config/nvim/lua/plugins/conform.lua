local function install_package(mason, package)
  if mason.has_package(package) then
    local p = mason.get_package(package)

    if not p:is_installed() then
      pcall(function() p:install() end)
    end
  end
end

function _G.install_tools(tools)
  local have_mason, mason = pcall(require, 'mason-registry')

  if have_mason then
    for _, t in pairs(tools)  do
      install_package(mason, t[1])
    end
  else
    vim.notify('mason not installed!', vim.log.levels.ERROR)
  end
end

local function configure()
  local formatters = {
    c          = { 'clang_format' },
    clojure    = { 'zprint' },
    cpp        = { 'clang_format' },
    css        = { 'stylelint' },
    fish       = { 'fish_indent' },
    javascript = { 'eslint_d' },
    lua        = { 'stylua' },
    python     = { 'black' },
    sh         = { 'shfmt' },
    typescript = { 'eslint_d' }
  }

  _G.install_tools(formatters)
  require('conform').setup({ formatters_by_ft = formatters })
end

local function setup(use)
  use({ 'stevearc/conform.nvim', config = configure, after = 'mason.nvim' })
end

return { setup = setup }
