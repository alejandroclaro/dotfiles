local function configure()
  vim.g['conjure#mapping#doc_word'] = false

  require('conjure.main').main()
  require('conjure.mapping')['on-filetype']()
end

local function setup(use)
  local ft = { 'lisp', 'clojure', 'scheme', 'racket' }

  use({ 'Olical/conjure', ft = ft, config = configure })
  use({ 'tpope/vim-sexp-mappings-for-regular-people', ft = ft, requires = 'guns/vim-sexp' })
end

return { setup = setup }

