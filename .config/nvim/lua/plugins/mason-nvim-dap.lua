local function configure()
  require("mason-nvim-dap").setup()
end

local function setup(use)
  use({ 'jay-babu/mason-nvim-dap.nvim', config = configure, after = { 'mason.nvim', 'nvim-dap' } })
end

return { setup = setup }
