local function configure()
  local is_ok, _ = pcall(vim.cmd, 'colorscheme dracula')

  if not is_ok then
    vim.notify('colorscheme not found!', 'error')
  end
end

local function setup(use)
  use({ 'Mofiqul/dracula.nvim', config = configure })
end

return { setup = setup }
