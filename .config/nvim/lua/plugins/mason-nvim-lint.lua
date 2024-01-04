local function configure()
  require ('mason-nvim-lint').setup()
end

local function setup(use)
  use({ 'rshkarin/mason-nvim-lint', config = configure, after = { 'nvim-lint', 'mason.nvim' } })
end

return { setup = setup }
