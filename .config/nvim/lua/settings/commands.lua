local function format(args)
  local range = nil

  if (args.count ~= -1) or (vim.api.nvim_get_mode().mode == 'n') then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]

    range = { ['start'] = { args.line1, 0 }, ['end'] = { args.line2, end_line:len() } }
  end

  require('conform').format({ async = true, lsp_fallback = true, range = range })
end

local function trim()
  local trailspace = require('mini.trailspace')

  trailspace.trim()
  trailspace.trim_last_lines()
end

vim.api.nvim_create_user_command('Format', format, { range = true })
vim.api.nvim_create_user_command('Trim', trim, {})

