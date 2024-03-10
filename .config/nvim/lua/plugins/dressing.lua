local function configure()
  local configuration =  {
    mappings = {
      n = {
        ["<C-p>"] = "HistoryPrev",
        ["<C-n>"] = "HistoryNext"
      },
      i = {
        ["<C-c>"] = "Close",
        ["<CR>"] = "Confirm",
        ["<C-p>"] = "HistoryPrev",
        ["<C-n>"] = "HistoryNext"
      },
    }
  }

  require('dressing').setup(configuration)
end

local function setup(use)
  local after = { 'nvim-cmp' }

  use({ 'stevearc/dressing.nvim', config = configure, after = after })
end

return { setup = setup }
