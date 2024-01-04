vim.opt.syntax = 'on'

vim.opt.tabstop     = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth  = 2
vim.opt.expandtab   = true
vim.opt.smarttab    = true

vim.opt.incsearch  = true
vim.opt.hlsearch   = true
vim.opt.ignorecase = true
vim.opt.smartcase  = true

vim.opt.timeoutlen    = 300
vim.opt.rnu           = true
vim.opt.numberwidth   = 3
vim.opt.textwidth     = 0
vim.opt.wrapmargin    = 0
vim.opt.wrap          = false
vim.opt.formatoptions = 'cqj'
vim.opt.laststatus    = 2

vim.opt.wildmenu = true
vim.opt.wildmode = 'longest:full,full'

vim.opt.shell = '/bin/bash'

vim.opt.guifont       = 'Hack Nerd Font'
vim.opt.termguicolors = true

vim.opt.colorcolumn = { 120 }
vim.api.nvim_set_hl(0, 'ColorColumn', { ctermbg = 236 })
