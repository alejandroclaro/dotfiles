local function configure()
  local tools = {
    bash       = { 'shellcheck'   },
    c          = { 'clangtidy'    },
    cmake      = { 'cmakelint'    },
    cpp        = { 'clangtidy'    },
    clojure    = { 'clj_kondo'    },
    fish       = { 'fish'         },
    javascript = { 'eslint_d'     },
    lua        = { 'luacheck'     },
    markdown   = { 'markdownlint' },
    python     = { 'pylint'       },
    sh         = { 'shellcheck'   },
    typescript = { 'eslint_d'     }
  }

  local function try_lint(args)
    require('lint').try_lint()
  end

  require('lint').linters_by_ft = tools
  vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufReadPost', 'InsertLeave' }, { callback = try_lint })
end

local function setup(use)
  use({ 'mfussenegger/nvim-lint', config = configure, after = 'nvim-lspconfig' })
end

return { setup = setup }
