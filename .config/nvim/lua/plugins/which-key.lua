local function configure()
  local wk = require("which-key")

  local configuration = {
    plugins = { spelling = true },
    triggers_blacklist = { i = { 'j', 'k' }, v = { 'j', 'k' } }
  }

  wk.setup(configuration)

  wk.register({
    ['[']              = { name = '+Previous/Enable'                    },
    [']']              = { name = '+Next/Disable'                       },
    ['[o']             = { name = '+Enable'                             },
    [']o']             = { name = '+Disable'                            },
    ['<leader>']       = { name = '+More working shortcuts'             },
    ['<leader>a']      = { name = '+Assistance (AI)'                    },
    ['<leader>b']      = { name = '+Buffer'                             },
    ['<leader>s']      = { name = '+Search'                             },
    ['<leader>o']      = { name = '+Open'                               },
    ['<localleader>']  = { name = '+More development shortcuts'         },
    ['<localleader>c'] = { name = '+Code'                               },
    ['<localleader>d'] = { name = '+Debug'                              },
    ['<localleader>t'] = { name = '+Test'                               },
    ['d]']             = { name = '+To next unmached group'             },
    ['d[']             = { name = '+To previous unmached group'         },
    ['dg']             = { name = '+To motion'                          },
    ['g']              = { name = '+Goto/Commenting/Casing/Surrounding' },
    ['y]']             = { name = '+To next unmached group'             },
    ['y[']             = { name = '+To previous unmached group'         },
    ['yg']             = { name = '+To motion'                          },
    ['z']              = { name = '+Spelling/Folding/Cursor'            }
  })
end

local function setup(use)
  use({ 'folke/which-key.nvim', config = configure })
end

return { setup = setup }
