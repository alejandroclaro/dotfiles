function _G.build_cmp_mapping(cmp)
  return {
    ['<C-n>']     = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-p>']     = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-b>']     = cmp.mapping.scroll_docs(-4),
    ['<C-f>']     = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>']     = cmp.mapping.abort(),
    ['<CR>']      = cmp.mapping.confirm({ select = true }),
    ['<S-CR>']    = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
    ['<C-CR>']    = function(fallback) cmp.abort(); fallback(); end
  }
end

local function configure()
  local cmp           = require('cmp')
  local sources       = { { name = "nvim_lsp" }, { name = "luasnip" }, { name = "path" } }
  local configuration = {}


  configuration.completion = { completeopt = 'menu,menuone,noinsert' }
  configuration.snippet    = { expand = function(args) require('luasnip').lsp_expand(args.body) end }
  configuration.sources    = cmp.config.sources(sources, { { name = 'buffer' } })
  configuration.mapping    = cmp.mapping.preset.insert(_G.build_cmp_mapping(cmp))

  require('cmp.config.default')()

  vim.api.nvim_set_hl(0, 'CmpGhostText', { link = 'Comment', default = true })
  cmp.setup.cmdline({ '/', '?' }, { mapping = cmp.mapping.preset.cmdline(), sources = { { name = 'buffer' } } })
  cmp.setup.cmdline(':', { mapping = cmp.mapping.preset.cmdline(), sources = cmp.config.sources({ { name = 'path' } }, { { name = 'cmdline' } }) })

  require('cmp').setup(configuration)
end

local function setup(use)
  use({ 'hrsh7th/cmp-buffer' })
  use({ 'hrsh7th/cmp-cmdline' })
  use({ 'hrsh7th/cmp-nvim-lsp' })
  use({ 'hrsh7th/cmp-path' })
  use({ 'saadparwaiz1/cmp_luasnip', requires = 'LuaSnip' })

  use({ 'hrsh7th/nvim-cmp', config = configure, after = 'LuaSnip' })
end

return { setup = setup }
