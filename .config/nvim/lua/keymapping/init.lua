local keymap = {}

keymap.normal = {}
keymap.insert = {}
keymap.visual = {}

function keymap.has_map(map, mode)
  mode = mode or 'n'
  return vim.fn.maparg(map, mode) ~= ''
end

function keymap.set(modes, lhs, rhs, description, options)
  local defaults = { noremap = true, silent = true, unique = true }

  options = vim.tbl_extend('force', defaults, options or {})
  options.desc = description

  vim.keymap.set(modes, lhs, rhs, options)
end

function keymap.normal.set(lhs, rhs, description, options)
  keymap.set('n', lhs, rhs, description, options)
end

function keymap.insert.set(lhs, rhs, description, options)
  keymap.set('i', lhs, rhs, description, options)
end

function keymap.visual.set(lhs, rhs, description, options)
  keymap.set('v', lhs, rhs, description, options)
end

function keymap.add_group(mode, lhs, name, options)
  local wk = require("which-key")

  wk.register({ [lhs] = { name = name } }, vim.tbl_extend('force', options or {}, { mode = mode }))
end

function keymap.normal.add_group(lhs, name, options)
  keymap.add_group('n', lhs, name, options)
end

function keymap.insert.add_group(lhs, name, options)
  keymap.add_group('i', lhs, name, options)
end

function keymap.visual.add_group(lhs, name, options)
  keymap.add_group('v', lhs, name, options)
end

-- leader keys
vim.g.mapleader      = ' '
vim.g.maplocalleader = '\\'

-- mapping
require('keymapping.ai').setup(keymap)
require('keymapping.buffers').setup(keymap)
require('keymapping.edition').setup(keymap)
require('keymapping.file-management').setup(keymap)
require('keymapping.help').setup(keymap)
require('keymapping.motions').setup(keymap)
require('keymapping.opening').setup(keymap)
require('keymapping.searching').setup(keymap)
require('keymapping.windows').setup(keymap)

local function map_on_lsp_attach(args)
  require('keymapping.coding').setup(keymap, args.buf)
  require('keymapping.debugging').setup(keymap, args.buf)
  require('keymapping.testing').setup(keymap, args.buf)
end

local lspAttachOptions = {
  group = vim.api.nvim_create_augroup('lsp-attach-keymaps', { clear = true }),
  callback = map_on_lsp_attach
}

vim.api.nvim_create_autocmd('LspAttach', lspAttachOptions)

