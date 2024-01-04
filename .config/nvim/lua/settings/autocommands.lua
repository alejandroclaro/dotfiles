local function toggle_numbers_on()
  vim.opt.rnu = false
  vim.opt.nu  = true
end

local function toggle_relative_on()
  vim.opt.rnu = true
  vim.opt.nu  = false
end

-- Show relative or absolute line number
vim.api.nvim_create_autocmd({ 'FocusLost', 'InsertEnter' }, { pattern = '*', callback = toggle_numbers_on })
vim.api.nvim_create_autocmd({ 'FocusGained', 'InsertLeave' }, { pattern = '*', callback = toggle_relative_on })

