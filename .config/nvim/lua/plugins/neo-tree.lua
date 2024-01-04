local function configure()
  require("neo-tree").setup()
end

local function setup(use)
  local requires = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons', 'MunifTanjim/nui.nvim' }

  use({ 'nvim-neo-tree/neo-tree.nvim', config = configure, branch = 'v3.x', requires = requires })
end

return { setup = setup }
