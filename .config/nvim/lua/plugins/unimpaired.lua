local function configure()
  local configuration = {}

  configuration.default_keymaps = false

  configuration.keymaps = {
    bprevious = {
      mapping = '[b',
      description = 'Jump to [count] previous buffer',
      dot_repeat = false
    },
    bnext = {
      mapping = ']b',
      description = 'Jump to [count] next buffer',
      dot_repeat = false
    },
    bfirst = {
      mapping = '[B',
      description = 'Jump to first buffer',
      dot_repeat = false
    },
    blast = {
      mapping = ']B',
      description = 'Jump to last buffer',
      dot_repeat = false
    },
    lprevious = {
      mapping = '[l',
      description = 'Jump to [count] previous entry in loclist',
      dot_repeat = false
    },
    lnext = {
      mapping = ']l',
      description = 'Jump to [count] next entry in loclist',
      dot_repeat = false
    },
    lfirst = {
      mapping = '[L',
      description = 'Jump to first entry in loclist',
      dot_repeat = false
    },
    llast = {
      mapping = ']L',
      description = 'Jump to last entry in loclist',
      dot_repeat = false
    },
    cprevious = {
      mapping = '[q',
      description = 'Jump to [count] previous entry in qflist',
      dot_repeat = false
    },
    cnext = {
      mapping = ']q',
      description = 'Jump to [count] next entry in qflist',
      dot_repeat = false
    },
    cfirst = {
      mapping = '[Q',
      description = 'Jump to first entry in qflist',
      dot_repeat = false
    },
    clast = {
      mapping = ']Q',
      description = 'Jump to last entry in qflist',
      dot_repeat = false
    },
    tprevious = {
      mapping = '[t',
      description = 'Jump to [count] previous matching tag',
      dot_repeat = false
    },
    tnext = {
      mapping = ']t',
      description = 'Jump to [count] next matching tag',
      dot_repeat = false
    },
    tfirst = {
      mapping = '[T',
      description = 'Jump to first matching tag',
      dot_repeat = false
    },
    tlast = {
      mapping = ']T',
      description = 'Jump to last matching tag',
      dot_repeat = false
    },
    blank_above = {
      mapping = '[<Space>',
      description = 'Add [count] blank lines above',
      dot_repeat = true,
    },
    blank_below = {
      mapping = ']<Space>',
      description = 'Add [count] blank lines below',
      dot_repeat = true,
    },
    exchange_above = {
      mapping = '[e',
      description = 'Exchange line with [count] lines above',
      dot_repeat = true,
    },
    exchange_below = {
      mapping = ']e',
      description = 'Exchange line with [count] lines below',
      dot_repeat = true,
    },
    exchange_section_above = {
      mapping = '[e',
      description = 'Move section [count] lines up',
      dot_repeat = true,
    },
    exchange_section_below = {
      mapping = ']e',
      description = 'Move section [count] lines down',
      dot_repeat = true,
    },
    enable_cursorline = {
      mapping = '[oc',
      description = 'Enable cursorline',
      dot_repeat = false
    },
    disable_cursorline = {
      mapping = ']oc',
      description = 'Disable cursorline',
      dot_repeat = false
    },
    enable_diff = {
      mapping = '[od',
      description = 'Enable diff',
      dot_repeat = false
    },
    disable_diff = {
      mapping = ']od',
      description = 'Disable diff',
      dot_repeat = false
    },
    enable_hlsearch = {
      mapping = '[oh',
      description = 'Enable hlsearch',
      dot_repeat = false
    },
    disable_hlsearch = {
      mapping = ']oh',
      description = 'Disable hlsearch',
      dot_repeat = false
    },
    enable_ignorecase = {
      mapping = '[oi',
      description = 'Enable ignorecase',
      dot_repeat = false
    },
    disable_ignorecase = {
      mapping = ']oi',
      description = 'Disable ignorecase',
      dot_repeat = false
    },
    enable_list = {
      mapping = '[ol',
      description = 'Show invisible characters (listchars)',
      dot_repeat = false
    },
    disable_list = {
      mapping = ']ol',
      description = 'Hide invisible characters (listchars)',
      dot_repeat = false
    },
    enable_spell = {
      mapping = '[os',
      description = 'Enable spell check',
      dot_repeat = false
    },
    disable_spell = {
      mapping = ']os',
      description = 'Disable spell check',
      dot_repeat = false
    },
    enable_colorcolumn = {
      mapping = '[ot',
      description = 'Enable colorcolumn',
      dot_repeat = false
    },
    disable_colorcolumn = {
      mapping = ']ot',
      description = 'Disable colorcolumn',
      dot_repeat = false
    },
    enable_cursorcolumn = {
      mapping = '[ou',
      description = 'Enable cursorcolumn',
      dot_repeat = false
    },
    disable_cursorcolumn = {
      mapping = ']ou',
      description = 'Disable cursorcolumn',
      dot_repeat = false
    },
    enable_virtualedit = {
      mapping = '[ov',
      description = 'Enable virtualedit',
      dot_repeat = false
    },
    disable_virtualedit = {
      mapping = ']ov',
      description = 'Disable virtualedit',
      dot_repeat = false
    },
    enable_wrap = {
      mapping = '[ow',
      description = 'Enable line wrapping',
      dot_repeat = false
    },
    disable_wrap = {
      mapping = ']ow',
      description = 'Disable line wrapping',
      dot_repeat = false
    }
  }

  require('unimpaired').setup(configuration)
end

local function setup(use)
  use({ 'tummetott/unimpaired.nvim', config = configure })
end

return { setup = setup }
