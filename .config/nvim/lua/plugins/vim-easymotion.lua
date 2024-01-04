local function configure()
  vim.g.EasyMotion_do_mapping = 0
  vim.g.EasyMotion_smartcase = 1
  vim.g.EasyMotion_use_smartsign_us = 1
end

local function setup(use)
  use({ 'easymotion/vim-easymotion', config = configure })
end

return { setup = setup }
