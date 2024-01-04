local function configure()
  vim.g.undotree_ShortIndicators = 30
end

local function setup(use)
  use({ 'mbbill/undotree', config = configure })
end


return { setup = setup }
