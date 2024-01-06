local function setup(use)
  vim.g.tmux_navigator_no_mappings = 1

  use({ 'christoomey/vim-tmux-navigator' })
end


return { setup = setup }

