local function configure()
  require('lsp-progress').setup({})
end

local function setup(use)
  use({ 'linrongbin16/lsp-progress.nvim', config = configure })
end

return { setup = setup }
