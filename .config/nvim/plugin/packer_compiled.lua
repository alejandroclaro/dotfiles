-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/aclaro/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/aclaro/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/aclaro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/aclaro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/aclaro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["ChatGPT.nvim"] = {
    config = { "\27LJ\2\2Ø\t\0\0\3\0\26\0 4\0\0\0'\1\1\0=\1\0\0'\1\3\0=\1\2\0'\1\5\0=\1\4\0'\1\a\0=\1\6\0'\1\t\0=\1\b\0'\1\v\0=\1\n\0005\1\r\0=\1\f\0005\1\15\0=\1\14\0005\1\18\0005\2\17\0=\2\19\1=\1\16\0005\1\22\0005\2\21\0=\2\19\1=\1\20\0006\1\23\0'\2\24\0B\1\2\0029\1\25\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\fchatgpt\frequire\1\0\0\1\0\22\19delete_session\6d\14yank_last\n<C-y>\16cycle_modes\n<C-m>\19rename_session\6r\19yank_last_code\n<C-k>\20toggle_settings\n<C-o>\17edit_message\6e\nclose\n<C-c>\24toggle_message_role\n<C-r>\16new_session\n<C-n>\28toggle_system_role_open\n<C-s>\17prev_message\n<C-k>\19delete_message\6d\20stop_generating\n<C-x>\20toggle_sessions\n<C-p>\18cycle_windows\n<Tab>\19select_session\f<Space>\17next_message\n<C-j>\14scroll_up\n<C-b>\18draft_message\n<C-r>\16scroll_down\n<C-f>\16toggle_help\n<C-_>\tchat\fkeymaps\1\0\0\1\0\a\vaccept\n<C-y>\16toggle_diff\n<C-d>\16toggle_help\n<C-_>\20toggle_settings\n<C-o>\18cycle_windows\n<Tab>\24use_output_as_input\n<C-a>\nclose\n<C-c>\27edit_with_instructions\1\0\6\21presence_penalty\3\0\16temperature\4≥ÊÃô\3≥ÊÃ˛\3\nmodel\ngpt-4\ntop_p\3\1\6n\3\1\22frequency_penalty\3\0\23openai_edit_params\1\0\a\21presence_penalty\3\0\16temperature\4≥ÊÃô\3≥ÊÃ˛\3\nmodel\ngpt-4\15max_tokens\3–\15\6n\3\1\ntop_p\3\1\22frequency_penalty\3\0\18openai_params\20echo 2023-05-15\26azure_api_version_cmd\14echo chat\25azure_api_engine_cmd4echo https://cog-smtt-chatgpt4.openai.azure.com\23azure_api_base_cmd\15echo azure\17api_type_cmd\22pass azure-openai\16api_key_cmd\15echo -n \"\"\17api_host_cmd\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/ChatGPT.nvim",
    url = "https://github.com/alejandroclaro/ChatGPT.nvim"
  },
  ["Comment.nvim"] = {
    config = { "\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    after = { "nvim-cmp" },
    config = { "\27LJ\2\2 \1\0\0\3\0\a\0\r6\0\0\0'\1\1\0B\0\2\0029\1\2\0009\1\3\0015\2\4\0B\1\2\0016\1\0\0'\2\5\0B\1\2\0029\1\6\1B\1\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\1\0\3\24enable_autosnippets\2\fhistory\2\17updateevents\29TextChanged,TextChangedI\15set_config\vconfig\fluasnip\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["aerial.nvim"] = {
    config = { "\27LJ\2\0024\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vaerial\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\2ö\3\0\0\a\0\19\0\0265\0\0\0005\1\1\0005\2\2\0=\1\3\0024\3\3\0>\0\1\3=\3\4\0026\3\5\0'\4\6\0B\3\2\0029\3\a\0035\4\b\0=\2\t\0046\5\n\0=\5\n\4B\3\2\0016\3\v\0009\3\f\0039\3\r\3'\4\14\0005\5\17\0006\6\15\0009\6\16\6=\6\18\5B\3\3\1K\0\1\0\rcallback\1\0\0\29bufferline_on_add_buffer\a_G\vBufAdd\24nvim_create_autocmd\bapi\bvim\15highlights\foptions\1\0\0\nsetup\15bufferline\frequire\foffsets\20separator_style\1\0\3\16diagnostics\rnvim_lsp\28show_buffer_close_icons\2\22buffer_close_icon\bÔÄç\1\3\0\0\5\5\1\0\4\ttext\18File explorer\15text_align\tleft\14highlight\14Directory\rfiletype\rneo-tree\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-doxygen"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/cmp-doxygen",
    url = "https://github.com/paopaol/cmp-doxygen"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conform.nvim"] = {
    config = { "\27LJ\2\2à\3\0\0\3\0\28\0!5\0\1\0005\1\0\0=\1\2\0005\1\3\0=\1\4\0005\1\5\0=\1\6\0005\1\a\0=\1\b\0005\1\t\0=\1\n\0005\1\v\0=\1\f\0005\1\r\0=\1\14\0005\1\15\0=\1\16\0005\1\17\0=\1\18\0005\1\19\0=\1\20\0006\1\21\0009\1\22\1\18\2\0\0B\1\2\0016\1\23\0'\2\24\0B\1\2\0029\1\25\0015\2\26\0=\0\27\2B\1\2\1K\0\1\0\21formatters_by_ft\1\0\0\nsetup\fconform\frequire\18install_tools\a_G\15typescript\1\2\0\0\reslint_d\ash\1\2\0\0\nshfmt\vpython\1\2\0\0\nblack\blua\1\2\0\0\vstylua\15javascript\1\2\0\0\reslint_d\tfish\1\2\0\0\16fish_indent\bcss\1\2\0\0\14stylelint\bcpp\1\2\0\0\17clang_format\fclojure\1\2\0\0\vzprint\6c\1\0\0\1\2\0\0\17clang_format\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  conjure = {
    config = { "\27LJ\2\2ò\1\0\0\2\0\b\0\0156\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\3\0'\1\4\0B\0\2\0029\0\5\0B\0\1\0016\0\3\0'\1\6\0B\0\2\0029\0\a\0B\0\1\1K\0\1\0\16on-filetype\20conjure.mapping\tmain\17conjure.main\frequire\29conjure#mapping#doc_word\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/conjure",
    url = "https://github.com/Olical/conjure"
  },
  ["dracula.nvim"] = {
    after = { "lualine.nvim", "bufferline.nvim", "nvim-cmp" },
    config = { "\27LJ\2\2ª\5\0\0\t\0!\0V6\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\2'\2\3\0004\3\0\0005\4\4\0=\2\5\4=\4\2\3+\4\2\0=\4\6\0039\4\a\0\18\5\3\0B\4\2\0016\4\b\0009\4\t\4'\5\n\0B\4\2\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\r\0005\a\15\0009\b\14\1=\b\5\aB\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\16\0005\a\17\0009\b\14\1=\b\5\aB\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\18\0005\a\20\0009\b\19\1=\b\21\aB\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\22\0005\a\24\0009\b\23\1=\b\21\aB\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\25\0005\a\26\0009\b\19\1=\b\21\aB\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\27\0005\a\28\0B\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\29\0005\a\30\0B\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\31\0005\a \0B\4\4\1K\0\1\0\1\0\1\tlink\vVisual\25illuminatedWordWrite\1\0\1\tlink\vVisual\24illuminatedWordRead\1\0\1\tlink\vVisual\24illuminatedWordText\1\0\1\abg\f#21222c\16CmpItemKind\1\0\1\abg\f#21222c\tcyan\21CmpItemAbbrMatch\afg\1\0\1\abg\f#21222c\nwhite\16CmpItemAbbr\1\0\0\19BufferLineFill\1\0\0\14selection\16ColorColumn\16nvim_set_hl\bapi\24colorscheme dracula\bcmd\bvim\nsetup\19transparent_bg\abg\1\0\0\f#303030\vcolors\fdracula\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\2–\1\0\0\3\0\n\0\0145\0\5\0005\1\1\0005\2\0\0=\2\2\0015\2\3\0=\2\4\1=\1\6\0006\1\a\0'\2\b\0B\1\2\0029\1\t\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\rdressing\frequire\rmappings\1\0\0\6i\1\0\4\n<C-c>\nClose\n<C-n>\16HistoryNext\t<CR>\fConfirm\n<C-p>\16HistoryPrev\6n\1\0\0\1\0\2\n<C-n>\16HistoryNext\n<C-p>\16HistoryPrev\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\2j\0\0\3\0\6\0\v4\0\0\0006\1\1\0009\1\2\1=\1\0\0006\1\3\0'\2\4\0B\1\2\0029\1\5\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\rgitsigns\frequire\23gitsigns_on_attach\a_G\14on_attach\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\0029\0\0\3\0\3\0\b4\0\0\0006\1\0\0'\2\1\0B\1\2\0029\1\2\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    after_files = { "/home/aclaro/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim/after/plugin/commands.lua" },
    config = { "\27LJ\2\2˚\3\0\0\a\0\25\0$5\0\0\0005\1\1\0005\2\4\0005\3\2\0=\0\3\3=\3\5\0025\3\6\0=\1\a\3=\3\b\0026\3\t\0'\4\n\0B\3\2\0029\4\v\0039\5\f\0039\5\r\0056\6\14\0009\6\15\6B\4\3\0016\4\16\0009\4\17\0045\5\19\0=\0\3\5=\5\18\0046\4\t\0'\5\20\0B\4\2\0029\4\21\4\18\5\2\0B\4\2\0019\4\v\0039\5\f\0039\5\22\0059\6\23\0039\6\24\6B\4\3\1K\0\1\0!scope_highlight_from_extmark\fbuiltin\20SCOPE_HIGHLIGHT\nsetup\bibl\1\0\0\23rainbow_delimiters\6g\bvim\20setup_highlight\a_G\20HIGHLIGHT_SETUP\ttype\rregister\14ibl.hooks\frequire\fexclude\14filetypes\1\0\0\nscope\1\0\0\14highlight\1\0\1\fenabled\2\1\a\0\0\14dashboard\thelp\nmason\rneo-tree\vnotify\15toggleterm\1\b\0\0\17RainbowGreen\18RainbowYellow\16RainbowBlue\18RainbowViolet\18RainbowOrange\16RainbowCyan\15RainbowRed\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-progress.nvim"] = {
    after = { "lualine.nvim" },
    config = { "\27LJ\2\2>\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\17lsp-progress\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/lsp-progress.nvim",
    url = "https://github.com/linrongbin16/lsp-progress.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\2£\1\0\0\3\0\a\0\f4\0\0\0005\1\1\0=\1\0\0005\1\3\0=\1\2\0006\1\4\0'\2\5\0B\1\2\0029\1\6\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\flspsaga\frequire\1\0\4\17hide_keyword\2\14show_file\1\15color_mode\1\venable\1\21symbol_in_winbar\1\0\1\venable\1\14lightbulb\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/nvimdev/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2à\t\0\0\6\0002\3[4\0\0\0005\1\1\0005\2\2\0=\2\3\0015\2\4\0=\2\5\0015\2\a\0005\3\6\0=\3\b\2=\2\t\1=\1\0\0005\1\14\0004\2\3\0005\3\v\0>\3\1\0024\3\3\0006\4\f\0009\4\r\4B\4\1\0?\4\0\0>\3\2\2=\2\15\0014\2\3\0005\3\16\0>\3\1\0026\3\f\0009\3\17\3B\3\1\0?\3\1\0=\2\18\0014\2\4\0005\3\19\0>\3\1\0026\3\f\0009\3\20\3B\3\1\2>\3\2\0026\3\f\0009\3\21\3B\3\1\0?\3\2\0=\2\22\0014\2\0\0=\2\23\0014\2\4\0005\3\24\0>\3\1\0025\3\25\0>\3\2\0025\3\26\0>\3\3\2=\2\27\0014\2\3\0005\3\28\0>\3\1\0025\3\29\0>\3\2\2=\2\30\1=\1\n\0005\1 \0=\1\31\0006\1!\0009\1\"\0016\2!\0009\2$\0029\2%\2=\2#\0016\1&\0'\2'\0B\1\2\0029\1(\1\18\2\0\0B\1\2\0016\1!\0009\1)\0019\1*\1'\2+\0005\3,\0B\1\3\0016\1!\0009\1)\0019\1-\1'\2.\0005\3/\0006\4&\0'\5'\0B\4\2\0029\0040\4=\0041\3B\1\3\1K\0\1\0\rcallback\frefresh\1\0\2\fpattern\29LspProgressStatusUpdated\ngroup\20lualine_augroup\tUser\24nvim_create_autocmd\1\0\1\nclear\2\20lualine_augroup\24nvim_create_augroup\bapi\nsetup\flualine\frequire\15laststatus\6o\23lualine_laststatus\6g\bvim\1\a\0\0\rfugitive\bfzf\nmason\rneo-tree\rquickfix\ftrouble\15extensions\14lualine_z\1\2\1\0\rlocation\fpadding\3\0\1\2\1\0\rprogress\fpadding\3\1\14lualine_y\1\2\1\0\rencoding\fpadding\3\1\1\2\1\0\15fileformat\fpadding\3\1\1\2\1\0\rfiletype\14icon_only\2\14lualine_x\14lualine_c\24build_lsp_component\31build_diagnostic_component\1\2\0\0\rfilename\14lualine_b\25build_diff_component\1\2\0\0\vbranch\14lualine_a\1\0\0#build_spell_language_component\a_G\1\2\0\0\tmode\rsections\23disabled_filetypes\15statusline\1\0\0\1\2\0\0\14dashboard\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\25component_separators\1\0\2\tleft\5\nright\5\1\0\3\17globalstatus\2\ntheme\tauto\18icons_enabled\2\foptions\3ÄÄ¿ô\4\5ÄÄ¿ô\4\aÄÄ¿ô\4\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\2Æ\t\0\0\v\0/\0v4\0\0\0006\1\0\0'\2\1\0B\1\2\0026\2\0\0'\3\2\0B\2\2\0026\3\3\0006\4\0\0'\5\4\0B\3\3\0035\5\n\0009\6\5\2'\a\6\0'\b\a\0'\t\b\0'\n\t\0B\6\5\2=\6\v\0055\6\r\0005\a\f\0=\a\14\6=\6\15\5\15\0\3\0X\6\3Ä9\6\17\4B\6\1\2=\6\16\0006\6\18\0009\6\19\6B\6\1\0019\6\20\0019\6\21\6\18\a\0\0B\6\2\0019\6\22\0019\6\21\6\18\a\0\0B\6\2\0019\6\23\0019\6\21\6\18\a\0\0B\6\2\0019\6\24\0019\6\21\6\18\a\0\0B\6\2\0019\6\25\0019\6\21\6\18\a\0\0B\6\2\0019\6\26\0019\6\21\0066\a\27\0009\a\28\a'\b\29\0\18\t\0\0\18\n\5\0B\a\4\0A\6\0\0019\6\30\0019\6\21\0066\a\27\0009\a\28\a'\b\29\0\18\t\0\0\18\n\5\0B\a\4\0A\6\0\0019\6\31\0019\6\21\6\18\a\0\0B\6\2\0019\6 \0019\6\21\6\18\a\0\0B\6\2\0019\6!\0019\6\21\6\18\a\0\0B\6\2\0019\6\"\0019\6\21\6\18\a\0\0B\6\2\0019\6#\0019\6\21\6\18\a\0\0B\6\2\0019\6$\0019\6\21\6\18\a\0\0B\6\2\0016\6\27\0009\6%\0069\6&\6'\a'\0005\b(\0B\6\3\0016\6\27\0009\6%\0069\6&\6'\a)\0005\b*\0B\6\3\0016\6\27\0009\6%\0069\6&\6'\a+\0005\b,\0B\6\3\0016\6\27\0009\6%\0069\6&\6'\a-\0005\b.\0B\6\3\1K\0\1\0\1\0\3\vtexthl\23DiagnosticSignInfo\ttext\tÓ©¥ \nnumhl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\3\vtexthl\23DiagnosticSignHint\ttext\tÔêÄ \nnumhl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\3\vtexthl\23DiagnosticSignWarn\ttext\tÓ©¨ \nnumhl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\3\vtexthl\24DiagnosticSignError\ttext\tÓ™á \nnumhl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\npylsp\vlua_ls\fjulials\25java_language_server\thtml\14gradle_ls\veslint\nforce\20tbl_deep_extend\bvim\rtsserver\ncssls\ncmake\16clojure_lsp\vclangd\nsetup\vbashls\28mason_install_lsp_tools\a_G\25default_capabilities\17capabilities\rsettings\21workingDirectory\1\0\0\1\0\1\tmode\tauto\rroot_dir\1\0\0\t.git\18jsconfig.json\18tsconfig.json\17package.json\17root_pattern\17cmp_nvim_lsp\npcall\19lspconfig.util\14lspconfig\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-nvim-dap.nvim"] = {
    config = { "\27LJ\2\2H\0\1\3\0\3\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\1\18\2\0\0B\1\2\1K\0\1\0\18default_setup\19mason-nvim-dap\frequire≠\1\1\0\3\0\n\0\0184\0\0\0004\1\0\0=\1\0\0+\1\2\0=\1\1\0005\1\4\0003\2\3\0>\2\1\0016\2\5\0=\2\6\1=\1\2\0006\1\a\0'\2\b\0B\1\2\0029\1\t\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\19mason-nvim-dap\frequire\vcppdbg\18dap_gdb_setup\1\0\0\0\rhandlers\20automatic_setup\19ensure_install\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/mason-nvim-dap.nvim",
    url = "https://github.com/jay-babu/mason-nvim-dap.nvim"
  },
  ["mason-nvim-lint"] = {
    config = { "\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20mason-nvim-lint\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/mason-nvim-lint",
    url = "https://github.com/rshkarin/mason-nvim-lint"
  },
  ["mason.nvim"] = {
    after = { "conform.nvim", "mason-nvim-dap.nvim", "mason-nvim-lint", "mason-lspconfig.nvim" },
    config = { "\27LJ\2\0023\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.align"] = {
    config = { "\27LJ\2\0028\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15mini.align\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/mini.align",
    url = "https://github.com/echasnovski/mini.align"
  },
  ["mini.bufremove"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19mini.bufremove\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/mini.bufremove",
    url = "https://github.com/echasnovski/mini.bufremove"
  },
  ["mini.sessions"] = {
    config = { "\27LJ\2\2S\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\tfile\16session.vim\nsetup\18mini.sessions\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/mini.sessions",
    url = "https://github.com/echasnovski/mini.sessions"
  },
  ["mini.splitjoin"] = {
    config = { "\27LJ\2\2m\0\0\3\0\5\0\n4\0\0\0005\1\1\0=\1\0\0006\1\2\0'\2\3\0B\1\2\0029\1\4\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\19mini.splitjoin\frequire\1\0\3\tjoin\5\vtoggle\5\nsplit\5\rmappings\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/mini.splitjoin",
    url = "https://github.com/echasnovski/mini.splitjoin"
  },
  ["mini.starter"] = {
    config = { "\27LJ\2\2∂\2\0\0\6\0\14\2$6\0\0\0'\1\1\0B\0\2\0024\1\0\0004\2\3\0009\3\3\0009\3\4\3B\3\1\2>\3\1\0029\3\3\0009\3\5\3'\4\6\0'\5\6\0B\3\3\0?\3\0\0=\2\2\0014\2\4\0006\3\b\0009\3\t\3B\3\1\2>\3\1\0029\3\n\0009\3\v\3)\4\5\0+\5\2\0B\3\3\2>\3\2\0029\3\n\0009\3\f\3B\3\1\0?\3\1\0=\2\a\0019\2\r\0\18\3\1\0B\2\2\1K\0\1\0\nsetup\20builtin_actions\rsessions\rsections\28starter_telescope_items\a_G\nitems\vcenter\raligning\18adding_bullet\rgen_hook\18content_hooks\17mini.starter\frequire\5ÄÄ¿ô\4\aÄÄ¿ô\4\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/mini.starter",
    url = "https://github.com/echasnovski/mini.starter"
  },
  ["mini.surround"] = {
    config = { "\27LJ\2\2˚\1\0\0\5\0\t\0\0196\0\0\0006\1\1\0'\2\2\0B\0\3\0034\2\0\0\15\0\0\0X\3\3Ä9\3\3\0015\4\4\0B\3\2\0015\3\6\0=\3\5\0026\3\1\0'\4\a\0B\3\2\0029\3\b\3\18\4\2\0B\3\2\1K\0\1\0\nsetup\18mini.surround\1\0\a\19update_n_lines\bgSn\14highlight\bgSh\badd\bgSa\14find_left\bgSF\freplace\bgSr\tfind\bgSf\vdelete\bgSd\rmappings\1\0\1\agS\14+surround\rregister\14which-key\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/mini.surround",
    url = "https://github.com/echasnovski/mini.surround"
  },
  ["mini.trailspace"] = {
    config = { "\27LJ\2\2E\0\0\3\0\3\0\b4\0\0\0006\1\0\0'\2\1\0B\1\2\0029\1\2\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\20mini.trailspace\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/mini.trailspace",
    url = "https://github.com/echasnovski/mini.trailspace"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["neodev.nvim"] = {
    config = { "\27LJ\2\0024\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vneodev\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  neotest = {
    config = { "\27LJ\2\2√\3\0\0\6\0\21\0.4\0\0\0006\1\0\0'\2\1\0B\1\2\0029\1\2\0015\2\5\0006\3\3\0009\3\4\3=\3\6\0026\3\3\0009\3\a\3=\3\b\0025\3\t\0=\3\n\2B\1\2\0026\2\0\0'\3\v\0B\2\2\0025\3\f\0006\4\3\0009\4\r\4=\4\14\0036\4\3\0009\4\15\4=\4\16\3B\2\2\0026\3\0\0'\4\17\0B\3\2\0024\4\0\0B\3\2\0026\4\3\0009\4\18\4=\4\b\0024\4\4\0>\1\1\4>\2\2\4>\3\3\4=\4\19\0006\4\0\0'\5\20\0B\4\2\0029\4\2\4\18\5\0\0B\4\2\1K\0\1\0\fneotest\radapters\23jtest_is_test_file\19neotest-python\bcwd\14jtest_cwd\19jestConfigFile\22jtest_config_file\1\0\1\16jestCommand\18yarn run jest\17neotest-jest\rmappings\1\0\1\14configure\6C\17is_test_file\23gtest_is_test_file\15filter_dir\1\0\0\23neotest_filter_dir\a_G\nsetup\18neotest-gtest\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/neotest",
    url = "https://github.com/nvim-neotest/neotest"
  },
  ["neotest-gtest"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/neotest-gtest",
    url = "https://github.com/alfaix/neotest-gtest"
  },
  ["neotest-jest"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/neotest-jest",
    url = "https://github.com/nvim-neotest/neotest-jest"
  },
  ["neotest-python"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/neotest-python",
    url = "https://github.com/nvim-neotest/neotest-python"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2—\1\0\0\a\0\n\0\0236\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0024\2\0\0009\3\3\1\18\4\3\0009\3\4\3'\5\5\0009\6\6\0B\6\1\0A\3\2\1+\3\2\0=\3\a\0026\3\0\0'\4\b\0B\3\2\0029\3\t\3\18\4\2\0B\3\2\1K\0\1\0\nsetup\19nvim-autopairs\rcheck_ts\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs", "dressing.nvim", "mason-lspconfig.nvim" },
    config = { "\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire±\6\1\0\n\0'\0^6\0\0\0'\1\1\0B\0\2\0024\1\0\0004\2\a\0005\3\2\0>\3\1\0025\3\3\0>\3\2\0025\3\4\0>\3\3\0025\3\5\0>\3\4\0025\3\6\0>\3\5\0025\3\a\0>\3\6\0025\3\t\0=\3\b\0015\3\v\0=\3\n\0015\3\14\0003\4\r\0=\4\15\3=\3\f\0019\3\17\0009\3\16\3\18\4\2\0004\5\3\0005\6\18\0>\6\1\5B\3\3\2=\3\16\0019\3\19\0009\3\20\0039\3\21\0036\4\22\0009\4\23\4\18\5\0\0B\4\2\0A\3\0\2=\3\19\0016\3\0\0'\4\24\0B\3\2\2B\3\1\0016\3\25\0009\3\26\0039\3\27\3)\4\0\0'\5\28\0005\6\29\0B\3\4\0019\3\30\0009\3\31\0035\4 \0005\5!\0009\6\19\0009\6\20\0069\6\31\6B\6\1\2=\6\19\0054\6\3\0005\a\"\0>\a\1\6=\6\16\5B\3\3\0019\3\30\0009\3\31\0035\4#\0005\5$\0009\6\19\0009\6\20\0069\6\31\6B\6\1\2=\6\19\0059\6\17\0009\6\16\0064\a\3\0005\b%\0>\b\1\a4\b\3\0005\t&\0>\t\1\bB\6\3\2=\6\16\5B\3\3\0016\3\0\0'\4\1\0B\3\2\0029\3\30\3\18\4\1\0B\3\2\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\1\2\0\0\6:\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\nsetup\1\0\2\tlink\fComment\fdefault\2\17CmpGhostText\16nvim_set_hl\bapi\bvim\23cmp.config.default\22build_cmp_mapping\a_G\vinsert\vpreset\fmapping\1\0\1\tname\vbuffer\vconfig\fsources\vexpand\1\0\0\0\fsnippet\1\0\1\19keyword_length\3\3\15completion\1\0\1\21max_view_entries\3\n\16performance\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\fdoxygen\1\0\1\tname\fconjure\1\0\1\tname\rnvim_lsp\1\0\1\tname\28nvim_lsp_signature_help\bcmp\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\2\"\0\0\2\1\1\0\5-\0\0\0009\0\0\0004\1\0\0B\0\2\1K\0\1\0\1¿\topen#\0\0\2\1\1\0\5-\0\0\0009\0\0\0004\1\0\0B\0\2\1K\0\1\0\1¿\nclose#\0\0\2\1\1\0\5-\0\0\0009\0\0\0004\1\0\0B\0\2\1K\0\1\0\1¿\nclose⁄\1\1\0\4\0\14\0\0256\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\1B\2\1\0019\2\4\0009\2\5\0029\2\6\0023\3\b\0=\3\a\0029\2\4\0009\2\t\0029\2\n\0023\3\v\0=\3\a\0029\2\4\0009\2\t\0029\2\f\0023\3\r\0=\3\a\0022\0\0ÄK\0\1\0\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\nsetup\ndapui\bdap\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lint"] = {
    after = { "mason-nvim-lint" },
    config = { "\27LJ\2\0025\0\1\3\0\3\0\0066\1\0\0'\2\1\0B\1\2\0029\1\2\1B\1\1\1K\0\1\0\rtry_lint\tlint\frequire‹\3\1\0\5\0!\0$5\0\1\0005\1\0\0=\1\2\0005\1\3\0=\1\4\0005\1\5\0=\1\6\0005\1\a\0=\1\b\0005\1\t\0=\1\n\0005\1\v\0=\1\f\0005\1\r\0=\1\14\0005\1\15\0=\1\16\0005\1\17\0=\1\18\0005\1\19\0=\1\20\0005\1\21\0=\1\22\0003\1\23\0006\2\24\0'\3\25\0B\2\2\2=\0\26\0026\2\27\0009\2\28\0029\2\29\0025\3\30\0005\4\31\0=\1 \4B\2\3\1K\0\1\0\rcallback\1\0\0\1\4\0\0\17BufWritePost\16BufReadPost\16InsertLeave\24nvim_create_autocmd\bapi\bvim\18linters_by_ft\tlint\frequire\0\ash\1\2\0\0\15shellcheck\vpython\1\2\0\0\vpylint\rmarkdown\1\2\0\0\17markdownlint\blua\1\2\0\0\rluacheck\15javascript\1\2\0\0\reslint_d\tfish\1\2\0\0\tfish\fclojure\1\2\0\0\14clj_kondo\bcpp\1\2\0\0\14clangtidy\ncmake\1\2\0\0\14cmakelint\6c\1\2\0\0\14clangtidy\tbash\1\0\0\1\2\0\0\15shellcheck\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\2@\0\0\2\0\5\1\a6\0\0\0009\0\1\0006\1\2\0009\1\3\0019\1\4\1\24\1\0\1D\0\2\0\nlines\6o\bvim\nfloor\tmath\1ÄÄ†ˇ\3B\0\0\2\0\5\1\a6\0\0\0009\0\1\0006\1\2\0009\1\3\0019\1\4\1\24\1\0\1D\0\2\0\fcolumns\6o\bvim\nfloor\tmath\1ÄÄ†ˇ\3K\0\1\4\0\4\0\a6\1\0\0009\1\1\0019\1\2\1\18\2\0\0005\3\3\0B\1\3\1K\0\1\0\1\0\1\vzindex\3d\24nvim_win_set_config\bapi\bvim¥\1\1\0\4\0\v\0\0195\0\0\0003\1\1\0=\1\2\0003\1\3\0=\1\4\0003\1\5\0=\1\6\0006\1\a\0'\2\b\0B\1\2\0029\1\t\1\18\2\0\0B\1\2\0016\1\n\0006\2\a\0'\3\b\0B\2\2\2=\2\b\1K\0\1\0\bvim\nsetup\vnotify\frequire\fon_open\0\14max_width\0\15max_height\0\1\0\2\ftimeout\3∏\23\22background_colour\f#303030\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2◊\3\0\0\3\0\r\0\0184\0\0\0005\1\1\0=\1\0\0005\1\3\0=\1\2\0005\1\5\0=\1\4\0005\1\a\0005\2\b\0=\2\t\1=\1\6\0006\1\n\0'\2\v\0B\1\2\0029\1\f\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\28nvim-treesitter.configs\frequire\fkeymaps\1\0\4\19init_selection\14<C-space>\22scope_incremental\1\21node_incremental\14<C-space>\21node_decremental\t<bs>\1\0\1\venable\2\26incremental_selection\1\27\0\0\tbash\6c\fclojure\ncmake\bcpp\bcss\tdiff\tfish\thtml\15javascript\njsdoc\tjson\njsonc\blua\vluadoc\tluap\rmarkdown\20markdown_inline\vpython\nquery\nregex\ttoml\btsx\bvim\vvimdoc\tyaml\21ensure_installed\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rainbow-delimiters.nvim"] = {
    after = { "indent-blankline.nvim" },
    config = { "\27LJ\2\2–\1\0\0\6\0\v\0\0186\0\0\0'\1\1\0B\0\2\0025\1\4\0009\2\2\0009\2\3\2=\2\5\0015\2\6\0005\3\a\0=\1\2\3=\2\b\0036\4\0\0'\5\t\0B\4\2\0029\4\n\4\18\5\3\0B\4\2\1K\0\1\0\nsetup\29rainbow-delimiters.setup\nquery\1\0\0\1\0\2\blua\19rainbow-blocks\5\23rainbow-delimiters\5\1\0\0\vglobal\rstrategy\23rainbow-delimiters\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/rainbow-delimiters.nvim",
    url = "https://github.com/HiPhish/rainbow-delimiters.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\2Ñ\2\0\0\a\0\17\0!6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0024\2\0\0004\3\0\0=\3\3\0029\3\3\0025\4\b\0005\5\6\0009\6\5\1=\6\a\5=\5\t\0045\5\n\0009\6\5\1=\6\a\5=\5\v\4=\4\4\0039\3\f\0\18\4\2\0B\3\2\0019\3\r\0'\4\14\0B\3\2\0019\3\r\0'\4\15\0B\3\2\0019\3\r\0'\4\16\0B\3\2\1K\0\1\0\tundo\bfzf\vaerial\19load_extension\nsetup\6n\1\0\0\6i\1\0\0\n<M-a>\1\0\0\15toggle_all\rmappings\rdefaults\22telescope.actions\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-undo.nvim"] = {
    after = { "telescope-fzf-native.nvim" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/telescope-undo.nvim",
    url = "https://github.com/debugloop/telescope-undo.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["unimpaired.nvim"] = {
    config = { "\27LJ\2\2ê\29\0\0\3\0Z\0`4\0\0\0+\1\1\0=\1\0\0005\1\3\0005\2\2\0=\2\4\0015\2\5\0=\2\6\0015\2\a\0=\2\b\0015\2\t\0=\2\n\0015\2\v\0=\2\f\0015\2\r\0=\2\14\0015\2\15\0=\2\16\0015\2\17\0=\2\18\0015\2\19\0=\2\20\0015\2\21\0=\2\22\0015\2\23\0=\2\24\0015\2\25\0=\2\26\0015\2\27\0=\2\28\0015\2\29\0=\2\30\0015\2\31\0=\2 \0015\2!\0=\2\"\0015\2#\0=\2$\0015\2%\0=\2&\0015\2'\0=\2(\0015\2)\0=\2*\0015\2+\0=\2,\0015\2-\0=\2.\0015\2/\0=\0020\0015\0021\0=\0022\0015\0023\0=\0024\0015\0025\0=\0026\0015\0027\0=\0028\0015\0029\0=\2:\0015\2;\0=\2<\0015\2=\0=\2>\0015\2?\0=\2@\0015\2A\0=\2B\0015\2C\0=\2D\0015\2E\0=\2F\0015\2G\0=\2H\0015\2I\0=\2J\0015\2K\0=\2L\0015\2M\0=\2N\0015\2O\0=\2P\0015\2Q\0=\2R\0015\2S\0=\2T\0015\2U\0=\2V\1=\1\1\0006\1W\0'\2X\0B\1\2\0029\1Y\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\15unimpaired\frequire\17disable_wrap\1\0\3\16description\26Disable line wrapping\15dot_repeat\1\fmapping\b]ow\16enable_wrap\1\0\3\16description\25Enable line wrapping\15dot_repeat\1\fmapping\b[ow\24disable_virtualedit\1\0\3\16description\24Disable virtualedit\15dot_repeat\1\fmapping\b]ov\23enable_virtualedit\1\0\3\16description\23Enable virtualedit\15dot_repeat\1\fmapping\b[ov\25disable_cursorcolumn\1\0\3\16description\25Disable cursorcolumn\15dot_repeat\1\fmapping\b]ou\24enable_cursorcolumn\1\0\3\16description\24Enable cursorcolumn\15dot_repeat\1\fmapping\b[ou\24disable_colorcolumn\1\0\3\16description\24Disable colorcolumn\15dot_repeat\1\fmapping\b]ot\23enable_colorcolumn\1\0\3\16description\23Enable colorcolumn\15dot_repeat\1\fmapping\b[ot\18disable_spell\1\0\3\16description\24Disable spell check\15dot_repeat\1\fmapping\b]os\17enable_spell\1\0\3\16description\23Enable spell check\15dot_repeat\1\fmapping\b[os\17disable_list\1\0\3\16description*Hide invisible characters (listchars)\15dot_repeat\1\fmapping\b]ol\16enable_list\1\0\3\16description*Show invisible characters (listchars)\15dot_repeat\1\fmapping\b[ol\23disable_ignorecase\1\0\3\16description\23Disable ignorecase\15dot_repeat\1\fmapping\b]oi\22enable_ignorecase\1\0\3\16description\22Enable ignorecase\15dot_repeat\1\fmapping\b[oi\21disable_hlsearch\1\0\3\16description\21Disable hlsearch\15dot_repeat\1\fmapping\b]oh\20enable_hlsearch\1\0\3\16description\20Enable hlsearch\15dot_repeat\1\fmapping\b[oh\17disable_diff\1\0\3\16description\17Disable diff\15dot_repeat\1\fmapping\b]od\16enable_diff\1\0\3\16description\16Enable diff\15dot_repeat\1\fmapping\b[od\23disable_cursorline\1\0\3\16description\23Disable cursorline\15dot_repeat\1\fmapping\b]oc\22enable_cursorline\1\0\3\16description\22Enable cursorline\15dot_repeat\1\fmapping\b[oc\27exchange_section_below\1\0\3\16description$Move section [count] lines down\15dot_repeat\2\fmapping\a]e\27exchange_section_above\1\0\3\16description\"Move section [count] lines up\15dot_repeat\2\fmapping\a[e\19exchange_below\1\0\3\16description+Exchange line with [count] lines below\15dot_repeat\2\fmapping\a]e\19exchange_above\1\0\3\16description+Exchange line with [count] lines above\15dot_repeat\2\fmapping\a[e\16blank_below\1\0\3\16description\"Add [count] blank lines below\15dot_repeat\2\fmapping\r]<Space>\16blank_above\1\0\3\16description\"Add [count] blank lines above\15dot_repeat\2\fmapping\r[<Space>\ntlast\1\0\3\16description\30Jump to last matching tag\15dot_repeat\1\fmapping\a]T\vtfirst\1\0\3\16description\31Jump to first matching tag\15dot_repeat\1\fmapping\a[T\ntnext\1\0\3\16description&Jump to [count] next matching tag\15dot_repeat\1\fmapping\a]t\14tprevious\1\0\3\16description*Jump to [count] previous matching tag\15dot_repeat\1\fmapping\a[t\nclast\1\0\3\16description!Jump to last entry in qflist\15dot_repeat\1\fmapping\a]Q\vcfirst\1\0\3\16description\"Jump to first entry in qflist\15dot_repeat\1\fmapping\a[Q\ncnext\1\0\3\16description)Jump to [count] next entry in qflist\15dot_repeat\1\fmapping\a]q\14cprevious\1\0\3\16description-Jump to [count] previous entry in qflist\15dot_repeat\1\fmapping\a[q\nllast\1\0\3\16description\"Jump to last entry in loclist\15dot_repeat\1\fmapping\a]L\vlfirst\1\0\3\16description#Jump to first entry in loclist\15dot_repeat\1\fmapping\a[L\nlnext\1\0\3\16description*Jump to [count] next entry in loclist\15dot_repeat\1\fmapping\a]l\14lprevious\1\0\3\16description.Jump to [count] previous entry in loclist\15dot_repeat\1\fmapping\a[l\nblast\1\0\3\16description\24Jump to last buffer\15dot_repeat\1\fmapping\a]B\vbfirst\1\0\3\16description\25Jump to first buffer\15dot_repeat\1\fmapping\a[B\nbnext\1\0\3\16description Jump to [count] next buffer\15dot_repeat\1\fmapping\a]b\14bprevious\1\0\0\1\0\3\16description$Jump to [count] previous buffer\15dot_repeat\1\fmapping\a[b\fkeymaps\20default_keymaps\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/unimpaired.nvim",
    url = "https://github.com/tummetott/unimpaired.nvim"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\2\15\0\0\1\0\0\0\2+\0\2\0L\0\2\0—\3\1\0\5\0\16\0\0265\0\0\0003\1\1\0005\2\2\0=\0\3\0024\3\0\0=\3\4\0025\3\5\0=\3\6\0024\3\0\0=\3\a\0024\3\0\0=\3\b\0024\3\0\0=\3\t\0024\3\0\0=\3\n\0024\3\0\0=\3\v\2=\1\f\0026\3\r\0'\4\14\0B\3\2\0029\3\15\3\18\4\2\0B\3\2\1K\0\1\0\14configure\15illuminate\frequire\18should_enable%providers_regex_syntax_allowlist$providers_regex_syntax_denylist\20modes_allowlist\19modes_denylist\24filetypes_allowlist\23filetypes_denylist\1\5\0\0\vdirbuf\rneo-tree\15toggleterm\20TelescopePrompt\23filetype_overrides\14providers\1\0\4\17under_cursor\2\ndelay\3d\27case_insensitive_regex\1\27min_count_to_highlight\3\2\0\1\4\0\0\blsp\15treesitter\nregex\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-sexp"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/vim-sexp",
    url = "https://github.com/guns/vim-sexp"
  },
  ["vim-sexp-mappings-for-regular-people"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/vim-sexp-mappings-for-regular-people",
    url = "https://github.com/tpope/vim-sexp-mappings-for-regular-people"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["which-key.nvim"] = {
    after = { "gitsigns.nvim", "mini.surround" },
    config = { "\27LJ\2\2°\1\0\0\4\0\f\0\0166\0\0\0'\1\1\0B\0\2\0025\1\3\0005\2\2\0=\2\4\0015\2\6\0005\3\5\0=\3\a\0025\3\b\0=\3\t\2=\2\n\0019\2\v\0\18\3\1\0B\2\2\1K\0\1\0\nsetup\23triggers_blacklist\6v\1\3\0\0\6j\6k\6i\1\0\0\1\3\0\0\6j\6k\fplugins\1\0\0\1\0\1\rspelling\2\14which-key\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\0023\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2◊\3\0\0\3\0\r\0\0184\0\0\0005\1\1\0=\1\0\0005\1\3\0=\1\2\0005\1\5\0=\1\4\0005\1\a\0005\2\b\0=\2\t\1=\1\6\0006\1\n\0'\2\v\0B\1\2\0029\1\f\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\28nvim-treesitter.configs\frequire\fkeymaps\1\0\4\19init_selection\14<C-space>\22scope_incremental\1\21node_incremental\14<C-space>\21node_decremental\t<bs>\1\0\1\venable\2\26incremental_selection\1\27\0\0\tbash\6c\fclojure\ncmake\bcpp\bcss\tdiff\tfish\thtml\15javascript\njsdoc\tjson\njsonc\blua\vluadoc\tluap\rmarkdown\20markdown_inline\vpython\nquery\nregex\ttoml\btsx\bvim\vvimdoc\tyaml\21ensure_installed\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2°\1\0\0\4\0\f\0\0166\0\0\0'\1\1\0B\0\2\0025\1\3\0005\2\2\0=\2\4\0015\2\6\0005\3\5\0=\3\a\0025\3\b\0=\3\t\2=\2\n\0019\2\v\0\18\3\1\0B\2\2\1K\0\1\0\nsetup\23triggers_blacklist\6v\1\3\0\0\6j\6k\6i\1\0\0\1\3\0\0\6j\6k\fplugins\1\0\0\1\0\1\rspelling\2\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: dracula.nvim
time([[Config for dracula.nvim]], true)
try_loadstring("\27LJ\2\2ª\5\0\0\t\0!\0V6\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\2'\2\3\0004\3\0\0005\4\4\0=\2\5\4=\4\2\3+\4\2\0=\4\6\0039\4\a\0\18\5\3\0B\4\2\0016\4\b\0009\4\t\4'\5\n\0B\4\2\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\r\0005\a\15\0009\b\14\1=\b\5\aB\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\16\0005\a\17\0009\b\14\1=\b\5\aB\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\18\0005\a\20\0009\b\19\1=\b\21\aB\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\22\0005\a\24\0009\b\23\1=\b\21\aB\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\25\0005\a\26\0009\b\19\1=\b\21\aB\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\27\0005\a\28\0B\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\29\0005\a\30\0B\4\4\0016\4\b\0009\4\v\0049\4\f\4)\5\0\0'\6\31\0005\a \0B\4\4\1K\0\1\0\1\0\1\tlink\vVisual\25illuminatedWordWrite\1\0\1\tlink\vVisual\24illuminatedWordRead\1\0\1\tlink\vVisual\24illuminatedWordText\1\0\1\abg\f#21222c\16CmpItemKind\1\0\1\abg\f#21222c\tcyan\21CmpItemAbbrMatch\afg\1\0\1\abg\f#21222c\nwhite\16CmpItemAbbr\1\0\0\19BufferLineFill\1\0\0\14selection\16ColorColumn\16nvim_set_hl\bapi\24colorscheme dracula\bcmd\bvim\nsetup\19transparent_bg\abg\1\0\0\f#303030\vcolors\fdracula\frequire\0", "config", "dracula.nvim")
time([[Config for dracula.nvim]], false)
-- Config for: lsp-progress.nvim
time([[Config for lsp-progress.nvim]], true)
try_loadstring("\27LJ\2\2>\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\17lsp-progress\frequire\0", "config", "lsp-progress.nvim")
time([[Config for lsp-progress.nvim]], false)
-- Config for: rainbow-delimiters.nvim
time([[Config for rainbow-delimiters.nvim]], true)
try_loadstring("\27LJ\2\2–\1\0\0\6\0\v\0\0186\0\0\0'\1\1\0B\0\2\0025\1\4\0009\2\2\0009\2\3\2=\2\5\0015\2\6\0005\3\a\0=\1\2\3=\2\b\0036\4\0\0'\5\t\0B\4\2\0029\4\n\4\18\5\3\0B\4\2\1K\0\1\0\nsetup\29rainbow-delimiters.setup\nquery\1\0\0\1\0\2\blua\19rainbow-blocks\5\23rainbow-delimiters\5\1\0\0\vglobal\rstrategy\23rainbow-delimiters\frequire\0", "config", "rainbow-delimiters.nvim")
time([[Config for rainbow-delimiters.nvim]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\0024\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vaerial\frequire\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: mini.bufremove
time([[Config for mini.bufremove]], true)
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19mini.bufremove\frequire\0", "config", "mini.bufremove")
time([[Config for mini.bufremove]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\2\"\0\0\2\1\1\0\5-\0\0\0009\0\0\0004\1\0\0B\0\2\1K\0\1\0\1¿\topen#\0\0\2\1\1\0\5-\0\0\0009\0\0\0004\1\0\0B\0\2\1K\0\1\0\1¿\nclose#\0\0\2\1\1\0\5-\0\0\0009\0\0\0004\1\0\0B\0\2\1K\0\1\0\1¿\nclose⁄\1\1\0\4\0\14\0\0256\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\1B\2\1\0019\2\4\0009\2\5\0029\2\6\0023\3\b\0=\3\a\0029\2\4\0009\2\t\0029\2\n\0023\3\v\0=\3\a\0029\2\4\0009\2\t\0029\2\f\0023\3\r\0=\3\a\0022\0\0ÄK\0\1\0\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\nsetup\ndapui\bdap\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: unimpaired.nvim
time([[Config for unimpaired.nvim]], true)
try_loadstring("\27LJ\2\2ê\29\0\0\3\0Z\0`4\0\0\0+\1\1\0=\1\0\0005\1\3\0005\2\2\0=\2\4\0015\2\5\0=\2\6\0015\2\a\0=\2\b\0015\2\t\0=\2\n\0015\2\v\0=\2\f\0015\2\r\0=\2\14\0015\2\15\0=\2\16\0015\2\17\0=\2\18\0015\2\19\0=\2\20\0015\2\21\0=\2\22\0015\2\23\0=\2\24\0015\2\25\0=\2\26\0015\2\27\0=\2\28\0015\2\29\0=\2\30\0015\2\31\0=\2 \0015\2!\0=\2\"\0015\2#\0=\2$\0015\2%\0=\2&\0015\2'\0=\2(\0015\2)\0=\2*\0015\2+\0=\2,\0015\2-\0=\2.\0015\2/\0=\0020\0015\0021\0=\0022\0015\0023\0=\0024\0015\0025\0=\0026\0015\0027\0=\0028\0015\0029\0=\2:\0015\2;\0=\2<\0015\2=\0=\2>\0015\2?\0=\2@\0015\2A\0=\2B\0015\2C\0=\2D\0015\2E\0=\2F\0015\2G\0=\2H\0015\2I\0=\2J\0015\2K\0=\2L\0015\2M\0=\2N\0015\2O\0=\2P\0015\2Q\0=\2R\0015\2S\0=\2T\0015\2U\0=\2V\1=\1\1\0006\1W\0'\2X\0B\1\2\0029\1Y\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\15unimpaired\frequire\17disable_wrap\1\0\3\16description\26Disable line wrapping\15dot_repeat\1\fmapping\b]ow\16enable_wrap\1\0\3\16description\25Enable line wrapping\15dot_repeat\1\fmapping\b[ow\24disable_virtualedit\1\0\3\16description\24Disable virtualedit\15dot_repeat\1\fmapping\b]ov\23enable_virtualedit\1\0\3\16description\23Enable virtualedit\15dot_repeat\1\fmapping\b[ov\25disable_cursorcolumn\1\0\3\16description\25Disable cursorcolumn\15dot_repeat\1\fmapping\b]ou\24enable_cursorcolumn\1\0\3\16description\24Enable cursorcolumn\15dot_repeat\1\fmapping\b[ou\24disable_colorcolumn\1\0\3\16description\24Disable colorcolumn\15dot_repeat\1\fmapping\b]ot\23enable_colorcolumn\1\0\3\16description\23Enable colorcolumn\15dot_repeat\1\fmapping\b[ot\18disable_spell\1\0\3\16description\24Disable spell check\15dot_repeat\1\fmapping\b]os\17enable_spell\1\0\3\16description\23Enable spell check\15dot_repeat\1\fmapping\b[os\17disable_list\1\0\3\16description*Hide invisible characters (listchars)\15dot_repeat\1\fmapping\b]ol\16enable_list\1\0\3\16description*Show invisible characters (listchars)\15dot_repeat\1\fmapping\b[ol\23disable_ignorecase\1\0\3\16description\23Disable ignorecase\15dot_repeat\1\fmapping\b]oi\22enable_ignorecase\1\0\3\16description\22Enable ignorecase\15dot_repeat\1\fmapping\b[oi\21disable_hlsearch\1\0\3\16description\21Disable hlsearch\15dot_repeat\1\fmapping\b]oh\20enable_hlsearch\1\0\3\16description\20Enable hlsearch\15dot_repeat\1\fmapping\b[oh\17disable_diff\1\0\3\16description\17Disable diff\15dot_repeat\1\fmapping\b]od\16enable_diff\1\0\3\16description\16Enable diff\15dot_repeat\1\fmapping\b[od\23disable_cursorline\1\0\3\16description\23Disable cursorline\15dot_repeat\1\fmapping\b]oc\22enable_cursorline\1\0\3\16description\22Enable cursorline\15dot_repeat\1\fmapping\b[oc\27exchange_section_below\1\0\3\16description$Move section [count] lines down\15dot_repeat\2\fmapping\a]e\27exchange_section_above\1\0\3\16description\"Move section [count] lines up\15dot_repeat\2\fmapping\a[e\19exchange_below\1\0\3\16description+Exchange line with [count] lines below\15dot_repeat\2\fmapping\a]e\19exchange_above\1\0\3\16description+Exchange line with [count] lines above\15dot_repeat\2\fmapping\a[e\16blank_below\1\0\3\16description\"Add [count] blank lines below\15dot_repeat\2\fmapping\r]<Space>\16blank_above\1\0\3\16description\"Add [count] blank lines above\15dot_repeat\2\fmapping\r[<Space>\ntlast\1\0\3\16description\30Jump to last matching tag\15dot_repeat\1\fmapping\a]T\vtfirst\1\0\3\16description\31Jump to first matching tag\15dot_repeat\1\fmapping\a[T\ntnext\1\0\3\16description&Jump to [count] next matching tag\15dot_repeat\1\fmapping\a]t\14tprevious\1\0\3\16description*Jump to [count] previous matching tag\15dot_repeat\1\fmapping\a[t\nclast\1\0\3\16description!Jump to last entry in qflist\15dot_repeat\1\fmapping\a]Q\vcfirst\1\0\3\16description\"Jump to first entry in qflist\15dot_repeat\1\fmapping\a[Q\ncnext\1\0\3\16description)Jump to [count] next entry in qflist\15dot_repeat\1\fmapping\a]q\14cprevious\1\0\3\16description-Jump to [count] previous entry in qflist\15dot_repeat\1\fmapping\a[q\nllast\1\0\3\16description\"Jump to last entry in loclist\15dot_repeat\1\fmapping\a]L\vlfirst\1\0\3\16description#Jump to first entry in loclist\15dot_repeat\1\fmapping\a[L\nlnext\1\0\3\16description*Jump to [count] next entry in loclist\15dot_repeat\1\fmapping\a]l\14lprevious\1\0\3\16description.Jump to [count] previous entry in loclist\15dot_repeat\1\fmapping\a[l\nblast\1\0\3\16description\24Jump to last buffer\15dot_repeat\1\fmapping\a]B\vbfirst\1\0\3\16description\25Jump to first buffer\15dot_repeat\1\fmapping\a[B\nbnext\1\0\3\16description Jump to [count] next buffer\15dot_repeat\1\fmapping\a]b\14bprevious\1\0\0\1\0\3\16description$Jump to [count] previous buffer\15dot_repeat\1\fmapping\a[b\fkeymaps\20default_keymaps\0", "config", "unimpaired.nvim")
time([[Config for unimpaired.nvim]], false)
-- Config for: mini.align
time([[Config for mini.align]], true)
try_loadstring("\27LJ\2\0028\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15mini.align\frequire\0", "config", "mini.align")
time([[Config for mini.align]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\2 \1\0\0\3\0\a\0\r6\0\0\0'\1\1\0B\0\2\0029\1\2\0009\1\3\0015\2\4\0B\1\2\0016\1\0\0'\2\5\0B\1\2\0029\1\6\1B\1\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\1\0\3\24enable_autosnippets\2\fhistory\2\17updateevents\29TextChanged,TextChangedI\15set_config\vconfig\fluasnip\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\2\15\0\0\1\0\0\0\2+\0\2\0L\0\2\0—\3\1\0\5\0\16\0\0265\0\0\0003\1\1\0005\2\2\0=\0\3\0024\3\0\0=\3\4\0025\3\5\0=\3\6\0024\3\0\0=\3\a\0024\3\0\0=\3\b\0024\3\0\0=\3\t\0024\3\0\0=\3\n\0024\3\0\0=\3\v\2=\1\f\0026\3\r\0'\4\14\0B\3\2\0029\3\15\3\18\4\2\0B\3\2\1K\0\1\0\14configure\15illuminate\frequire\18should_enable%providers_regex_syntax_allowlist$providers_regex_syntax_denylist\20modes_allowlist\19modes_denylist\24filetypes_allowlist\23filetypes_denylist\1\5\0\0\vdirbuf\rneo-tree\15toggleterm\20TelescopePrompt\23filetype_overrides\14providers\1\0\4\17under_cursor\2\ndelay\3d\27case_insensitive_regex\1\27min_count_to_highlight\3\2\0\1\4\0\0\blsp\15treesitter\nregex\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: neotest
time([[Config for neotest]], true)
try_loadstring("\27LJ\2\2√\3\0\0\6\0\21\0.4\0\0\0006\1\0\0'\2\1\0B\1\2\0029\1\2\0015\2\5\0006\3\3\0009\3\4\3=\3\6\0026\3\3\0009\3\a\3=\3\b\0025\3\t\0=\3\n\2B\1\2\0026\2\0\0'\3\v\0B\2\2\0025\3\f\0006\4\3\0009\4\r\4=\4\14\0036\4\3\0009\4\15\4=\4\16\3B\2\2\0026\3\0\0'\4\17\0B\3\2\0024\4\0\0B\3\2\0026\4\3\0009\4\18\4=\4\b\0024\4\4\0>\1\1\4>\2\2\4>\3\3\4=\4\19\0006\4\0\0'\5\20\0B\4\2\0029\4\2\4\18\5\0\0B\4\2\1K\0\1\0\fneotest\radapters\23jtest_is_test_file\19neotest-python\bcwd\14jtest_cwd\19jestConfigFile\22jtest_config_file\1\0\1\16jestCommand\18yarn run jest\17neotest-jest\rmappings\1\0\1\14configure\6C\17is_test_file\23gtest_is_test_file\15filter_dir\1\0\0\23neotest_filter_dir\a_G\nsetup\18neotest-gtest\frequire\0", "config", "neotest")
time([[Config for neotest]], false)
-- Config for: mini.trailspace
time([[Config for mini.trailspace]], true)
try_loadstring("\27LJ\2\2E\0\0\3\0\3\0\b4\0\0\0006\1\0\0'\2\1\0B\1\2\0029\1\2\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\20mini.trailspace\frequire\0", "config", "mini.trailspace")
time([[Config for mini.trailspace]], false)
-- Config for: mini.splitjoin
time([[Config for mini.splitjoin]], true)
try_loadstring("\27LJ\2\2m\0\0\3\0\5\0\n4\0\0\0005\1\1\0=\1\0\0006\1\2\0'\2\3\0B\1\2\0029\1\4\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\19mini.splitjoin\frequire\1\0\3\tjoin\5\vtoggle\5\nsplit\5\rmappings\0", "config", "mini.splitjoin")
time([[Config for mini.splitjoin]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\2@\0\0\2\0\5\1\a6\0\0\0009\0\1\0006\1\2\0009\1\3\0019\1\4\1\24\1\0\1D\0\2\0\nlines\6o\bvim\nfloor\tmath\1ÄÄ†ˇ\3B\0\0\2\0\5\1\a6\0\0\0009\0\1\0006\1\2\0009\1\3\0019\1\4\1\24\1\0\1D\0\2\0\fcolumns\6o\bvim\nfloor\tmath\1ÄÄ†ˇ\3K\0\1\4\0\4\0\a6\1\0\0009\1\1\0019\1\2\1\18\2\0\0005\3\3\0B\1\3\1K\0\1\0\1\0\1\vzindex\3d\24nvim_win_set_config\bapi\bvim¥\1\1\0\4\0\v\0\0195\0\0\0003\1\1\0=\1\2\0003\1\3\0=\1\4\0003\1\5\0=\1\6\0006\1\a\0'\2\b\0B\1\2\0029\1\t\1\18\2\0\0B\1\2\0016\1\n\0006\2\a\0'\3\b\0B\2\2\2=\2\b\1K\0\1\0\bvim\nsetup\vnotify\frequire\fon_open\0\14max_width\0\15max_height\0\1\0\2\ftimeout\3∏\23\22background_colour\f#303030\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: mini.sessions
time([[Config for mini.sessions]], true)
try_loadstring("\27LJ\2\2S\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\tfile\16session.vim\nsetup\18mini.sessions\frequire\0", "config", "mini.sessions")
time([[Config for mini.sessions]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\0029\0\0\3\0\3\0\b4\0\0\0006\1\0\0'\2\1\0B\1\2\0029\1\2\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-dap ]]
vim.cmd [[ packadd telescope.nvim ]]
vim.cmd [[ packadd ChatGPT.nvim ]]

-- Config for: ChatGPT.nvim
try_loadstring("\27LJ\2\2Ø\t\0\0\3\0\26\0 4\0\0\0'\1\1\0=\1\0\0'\1\3\0=\1\2\0'\1\5\0=\1\4\0'\1\a\0=\1\6\0'\1\t\0=\1\b\0'\1\v\0=\1\n\0005\1\r\0=\1\f\0005\1\15\0=\1\14\0005\1\18\0005\2\17\0=\2\19\1=\1\16\0005\1\22\0005\2\21\0=\2\19\1=\1\20\0006\1\23\0'\2\24\0B\1\2\0029\1\25\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\fchatgpt\frequire\1\0\0\1\0\22\19delete_session\6d\14yank_last\n<C-y>\16cycle_modes\n<C-m>\19rename_session\6r\19yank_last_code\n<C-k>\20toggle_settings\n<C-o>\17edit_message\6e\nclose\n<C-c>\24toggle_message_role\n<C-r>\16new_session\n<C-n>\28toggle_system_role_open\n<C-s>\17prev_message\n<C-k>\19delete_message\6d\20stop_generating\n<C-x>\20toggle_sessions\n<C-p>\18cycle_windows\n<Tab>\19select_session\f<Space>\17next_message\n<C-j>\14scroll_up\n<C-b>\18draft_message\n<C-r>\16scroll_down\n<C-f>\16toggle_help\n<C-_>\tchat\fkeymaps\1\0\0\1\0\a\vaccept\n<C-y>\16toggle_diff\n<C-d>\16toggle_help\n<C-_>\20toggle_settings\n<C-o>\18cycle_windows\n<Tab>\24use_output_as_input\n<C-a>\nclose\n<C-c>\27edit_with_instructions\1\0\6\21presence_penalty\3\0\16temperature\4≥ÊÃô\3≥ÊÃ˛\3\nmodel\ngpt-4\ntop_p\3\1\6n\3\1\22frequency_penalty\3\0\23openai_edit_params\1\0\a\21presence_penalty\3\0\16temperature\4≥ÊÃô\3≥ÊÃ˛\3\nmodel\ngpt-4\15max_tokens\3–\15\6n\3\1\ntop_p\3\1\22frequency_penalty\3\0\18openai_params\20echo 2023-05-15\26azure_api_version_cmd\14echo chat\25azure_api_engine_cmd4echo https://cog-smtt-chatgpt4.openai.azure.com\23azure_api_base_cmd\15echo azure\17api_type_cmd\22pass azure-openai\16api_key_cmd\15echo -n \"\"\17api_host_cmd\0", "config", "ChatGPT.nvim")

vim.cmd [[ packadd mini.starter ]]

-- Config for: mini.starter
try_loadstring("\27LJ\2\2∂\2\0\0\6\0\14\2$6\0\0\0'\1\1\0B\0\2\0024\1\0\0004\2\3\0009\3\3\0009\3\4\3B\3\1\2>\3\1\0029\3\3\0009\3\5\3'\4\6\0'\5\6\0B\3\3\0?\3\0\0=\2\2\0014\2\4\0006\3\b\0009\3\t\3B\3\1\2>\3\1\0029\3\n\0009\3\v\3)\4\5\0+\5\2\0B\3\3\2>\3\2\0029\3\n\0009\3\f\3B\3\1\0?\3\1\0=\2\a\0019\2\r\0\18\3\1\0B\2\2\1K\0\1\0\nsetup\20builtin_actions\rsessions\rsections\28starter_telescope_items\a_G\nitems\vcenter\raligning\18adding_bullet\rgen_hook\18content_hooks\17mini.starter\frequire\5ÄÄ¿ô\4\aÄÄ¿ô\4\0", "config", "mini.starter")

vim.cmd [[ packadd telescope-undo.nvim ]]
vim.cmd [[ packadd telescope-fzf-native.nvim ]]

-- Config for: telescope-fzf-native.nvim
try_loadstring("\27LJ\2\2Ñ\2\0\0\a\0\17\0!6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0024\2\0\0004\3\0\0=\3\3\0029\3\3\0025\4\b\0005\5\6\0009\6\5\1=\6\a\5=\5\t\0045\5\n\0009\6\5\1=\6\a\5=\5\v\4=\4\4\0039\3\f\0\18\4\2\0B\3\2\0019\3\r\0'\4\14\0B\3\2\0019\3\r\0'\4\15\0B\3\2\0019\3\r\0'\4\16\0B\3\2\1K\0\1\0\tundo\bfzf\vaerial\19load_extension\nsetup\6n\1\0\0\6i\1\0\0\n<M-a>\1\0\0\15toggle_all\rmappings\rdefaults\22telescope.actions\14telescope\frequire\0", "config", "telescope-fzf-native.nvim")

vim.cmd [[ packadd indent-blankline.nvim ]]

-- Config for: indent-blankline.nvim
try_loadstring("\27LJ\2\2˚\3\0\0\a\0\25\0$5\0\0\0005\1\1\0005\2\4\0005\3\2\0=\0\3\3=\3\5\0025\3\6\0=\1\a\3=\3\b\0026\3\t\0'\4\n\0B\3\2\0029\4\v\0039\5\f\0039\5\r\0056\6\14\0009\6\15\6B\4\3\0016\4\16\0009\4\17\0045\5\19\0=\0\3\5=\5\18\0046\4\t\0'\5\20\0B\4\2\0029\4\21\4\18\5\2\0B\4\2\0019\4\v\0039\5\f\0039\5\22\0059\6\23\0039\6\24\6B\4\3\1K\0\1\0!scope_highlight_from_extmark\fbuiltin\20SCOPE_HIGHLIGHT\nsetup\bibl\1\0\0\23rainbow_delimiters\6g\bvim\20setup_highlight\a_G\20HIGHLIGHT_SETUP\ttype\rregister\14ibl.hooks\frequire\fexclude\14filetypes\1\0\0\nscope\1\0\0\14highlight\1\0\1\fenabled\2\1\a\0\0\14dashboard\thelp\nmason\rneo-tree\vnotify\15toggleterm\1\b\0\0\17RainbowGreen\18RainbowYellow\16RainbowBlue\18RainbowViolet\18RainbowOrange\16RainbowCyan\15RainbowRed\0", "config", "indent-blankline.nvim")

vim.cmd [[ packadd nvim-cmp ]]

-- Config for: nvim-cmp
try_loadstring("\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire±\6\1\0\n\0'\0^6\0\0\0'\1\1\0B\0\2\0024\1\0\0004\2\a\0005\3\2\0>\3\1\0025\3\3\0>\3\2\0025\3\4\0>\3\3\0025\3\5\0>\3\4\0025\3\6\0>\3\5\0025\3\a\0>\3\6\0025\3\t\0=\3\b\0015\3\v\0=\3\n\0015\3\14\0003\4\r\0=\4\15\3=\3\f\0019\3\17\0009\3\16\3\18\4\2\0004\5\3\0005\6\18\0>\6\1\5B\3\3\2=\3\16\0019\3\19\0009\3\20\0039\3\21\0036\4\22\0009\4\23\4\18\5\0\0B\4\2\0A\3\0\2=\3\19\0016\3\0\0'\4\24\0B\3\2\2B\3\1\0016\3\25\0009\3\26\0039\3\27\3)\4\0\0'\5\28\0005\6\29\0B\3\4\0019\3\30\0009\3\31\0035\4 \0005\5!\0009\6\19\0009\6\20\0069\6\31\6B\6\1\2=\6\19\0054\6\3\0005\a\"\0>\a\1\6=\6\16\5B\3\3\0019\3\30\0009\3\31\0035\4#\0005\5$\0009\6\19\0009\6\20\0069\6\31\6B\6\1\2=\6\19\0059\6\17\0009\6\16\0064\a\3\0005\b%\0>\b\1\a4\b\3\0005\t&\0>\t\1\bB\6\3\2=\6\16\5B\3\3\0016\3\0\0'\4\1\0B\3\2\0029\3\30\3\18\4\1\0B\3\2\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\1\2\0\0\6:\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\nsetup\1\0\2\tlink\fComment\fdefault\2\17CmpGhostText\16nvim_set_hl\bapi\bvim\23cmp.config.default\22build_cmp_mapping\a_G\vinsert\vpreset\fmapping\1\0\1\tname\vbuffer\vconfig\fsources\vexpand\1\0\0\0\fsnippet\1\0\1\19keyword_length\3\3\15completion\1\0\1\21max_view_entries\3\n\16performance\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\fdoxygen\1\0\1\tname\fconjure\1\0\1\tname\rnvim_lsp\1\0\1\tname\28nvim_lsp_signature_help\bcmp\frequire\0", "config", "nvim-cmp")

vim.cmd [[ packadd dressing.nvim ]]

-- Config for: dressing.nvim
try_loadstring("\27LJ\2\2–\1\0\0\3\0\n\0\0145\0\5\0005\1\1\0005\2\0\0=\2\2\0015\2\3\0=\2\4\1=\1\6\0006\1\a\0'\2\b\0B\1\2\0029\1\t\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\rdressing\frequire\rmappings\1\0\0\6i\1\0\4\n<C-c>\nClose\n<C-n>\16HistoryNext\t<CR>\fConfirm\n<C-p>\16HistoryPrev\6n\1\0\0\1\0\2\n<C-n>\16HistoryNext\n<C-p>\16HistoryPrev\0", "config", "dressing.nvim")

vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\2—\1\0\0\a\0\n\0\0236\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0024\2\0\0009\3\3\1\18\4\3\0009\3\4\3'\5\5\0009\6\6\0B\6\1\0A\3\2\1+\3\2\0=\3\a\0026\3\0\0'\4\b\0B\3\2\0029\3\t\3\18\4\2\0B\3\2\1K\0\1\0\nsetup\19nvim-autopairs\rcheck_ts\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\frequire\0", "config", "nvim-autopairs")

vim.cmd [[ packadd bufferline.nvim ]]

-- Config for: bufferline.nvim
try_loadstring("\27LJ\2\2ö\3\0\0\a\0\19\0\0265\0\0\0005\1\1\0005\2\2\0=\1\3\0024\3\3\0>\0\1\3=\3\4\0026\3\5\0'\4\6\0B\3\2\0029\3\a\0035\4\b\0=\2\t\0046\5\n\0=\5\n\4B\3\2\0016\3\v\0009\3\f\0039\3\r\3'\4\14\0005\5\17\0006\6\15\0009\6\16\6=\6\18\5B\3\3\1K\0\1\0\rcallback\1\0\0\29bufferline_on_add_buffer\a_G\vBufAdd\24nvim_create_autocmd\bapi\bvim\15highlights\foptions\1\0\0\nsetup\15bufferline\frequire\foffsets\20separator_style\1\0\3\16diagnostics\rnvim_lsp\28show_buffer_close_icons\2\22buffer_close_icon\bÔÄç\1\3\0\0\5\5\1\0\4\ttext\18File explorer\15text_align\tleft\14highlight\14Directory\rfiletype\rneo-tree\0", "config", "bufferline.nvim")

vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
try_loadstring("\27LJ\2\2à\t\0\0\6\0002\3[4\0\0\0005\1\1\0005\2\2\0=\2\3\0015\2\4\0=\2\5\0015\2\a\0005\3\6\0=\3\b\2=\2\t\1=\1\0\0005\1\14\0004\2\3\0005\3\v\0>\3\1\0024\3\3\0006\4\f\0009\4\r\4B\4\1\0?\4\0\0>\3\2\2=\2\15\0014\2\3\0005\3\16\0>\3\1\0026\3\f\0009\3\17\3B\3\1\0?\3\1\0=\2\18\0014\2\4\0005\3\19\0>\3\1\0026\3\f\0009\3\20\3B\3\1\2>\3\2\0026\3\f\0009\3\21\3B\3\1\0?\3\2\0=\2\22\0014\2\0\0=\2\23\0014\2\4\0005\3\24\0>\3\1\0025\3\25\0>\3\2\0025\3\26\0>\3\3\2=\2\27\0014\2\3\0005\3\28\0>\3\1\0025\3\29\0>\3\2\2=\2\30\1=\1\n\0005\1 \0=\1\31\0006\1!\0009\1\"\0016\2!\0009\2$\0029\2%\2=\2#\0016\1&\0'\2'\0B\1\2\0029\1(\1\18\2\0\0B\1\2\0016\1!\0009\1)\0019\1*\1'\2+\0005\3,\0B\1\3\0016\1!\0009\1)\0019\1-\1'\2.\0005\3/\0006\4&\0'\5'\0B\4\2\0029\0040\4=\0041\3B\1\3\1K\0\1\0\rcallback\frefresh\1\0\2\fpattern\29LspProgressStatusUpdated\ngroup\20lualine_augroup\tUser\24nvim_create_autocmd\1\0\1\nclear\2\20lualine_augroup\24nvim_create_augroup\bapi\nsetup\flualine\frequire\15laststatus\6o\23lualine_laststatus\6g\bvim\1\a\0\0\rfugitive\bfzf\nmason\rneo-tree\rquickfix\ftrouble\15extensions\14lualine_z\1\2\1\0\rlocation\fpadding\3\0\1\2\1\0\rprogress\fpadding\3\1\14lualine_y\1\2\1\0\rencoding\fpadding\3\1\1\2\1\0\15fileformat\fpadding\3\1\1\2\1\0\rfiletype\14icon_only\2\14lualine_x\14lualine_c\24build_lsp_component\31build_diagnostic_component\1\2\0\0\rfilename\14lualine_b\25build_diff_component\1\2\0\0\vbranch\14lualine_a\1\0\0#build_spell_language_component\a_G\1\2\0\0\tmode\rsections\23disabled_filetypes\15statusline\1\0\0\1\2\0\0\14dashboard\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\25component_separators\1\0\2\tleft\5\nright\5\1\0\3\17globalstatus\2\ntheme\tauto\18icons_enabled\2\foptions\3ÄÄ¿ô\4\5ÄÄ¿ô\4\aÄÄ¿ô\4\0", "config", "lualine.nvim")

vim.cmd [[ packadd mini.surround ]]

-- Config for: mini.surround
try_loadstring("\27LJ\2\2˚\1\0\0\5\0\t\0\0196\0\0\0006\1\1\0'\2\2\0B\0\3\0034\2\0\0\15\0\0\0X\3\3Ä9\3\3\0015\4\4\0B\3\2\0015\3\6\0=\3\5\0026\3\1\0'\4\a\0B\3\2\0029\3\b\3\18\4\2\0B\3\2\1K\0\1\0\nsetup\18mini.surround\1\0\a\19update_n_lines\bgSn\14highlight\bgSh\badd\bgSa\14find_left\bgSF\freplace\bgSr\tfind\bgSf\vdelete\bgSd\rmappings\1\0\1\agS\14+surround\rregister\14which-key\frequire\npcall\0", "config", "mini.surround")

vim.cmd [[ packadd gitsigns.nvim ]]

-- Config for: gitsigns.nvim
try_loadstring("\27LJ\2\2j\0\0\3\0\6\0\v4\0\0\0006\1\1\0009\1\2\1=\1\0\0006\1\3\0'\2\4\0B\1\2\0029\1\5\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\rgitsigns\frequire\23gitsigns_on_attach\a_G\14on_attach\0", "config", "gitsigns.nvim")

vim.cmd [[ packadd nvim-lspconfig ]]
vim.cmd [[ packadd neodev.nvim ]]

-- Config for: neodev.nvim
try_loadstring("\27LJ\2\0024\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vneodev\frequire\0", "config", "neodev.nvim")

vim.cmd [[ packadd lspsaga.nvim ]]

-- Config for: lspsaga.nvim
try_loadstring("\27LJ\2\2£\1\0\0\3\0\a\0\f4\0\0\0005\1\1\0=\1\0\0005\1\3\0=\1\2\0006\1\4\0'\2\5\0B\1\2\0029\1\6\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\flspsaga\frequire\1\0\4\17hide_keyword\2\14show_file\1\15color_mode\1\venable\1\21symbol_in_winbar\1\0\1\venable\1\14lightbulb\0", "config", "lspsaga.nvim")

vim.cmd [[ packadd nvim-lint ]]

-- Config for: nvim-lint
try_loadstring("\27LJ\2\0025\0\1\3\0\3\0\0066\1\0\0'\2\1\0B\1\2\0029\1\2\1B\1\1\1K\0\1\0\rtry_lint\tlint\frequire‹\3\1\0\5\0!\0$5\0\1\0005\1\0\0=\1\2\0005\1\3\0=\1\4\0005\1\5\0=\1\6\0005\1\a\0=\1\b\0005\1\t\0=\1\n\0005\1\v\0=\1\f\0005\1\r\0=\1\14\0005\1\15\0=\1\16\0005\1\17\0=\1\18\0005\1\19\0=\1\20\0005\1\21\0=\1\22\0003\1\23\0006\2\24\0'\3\25\0B\2\2\2=\0\26\0026\2\27\0009\2\28\0029\2\29\0025\3\30\0005\4\31\0=\1 \4B\2\3\1K\0\1\0\rcallback\1\0\0\1\4\0\0\17BufWritePost\16BufReadPost\16InsertLeave\24nvim_create_autocmd\bapi\bvim\18linters_by_ft\tlint\frequire\0\ash\1\2\0\0\15shellcheck\vpython\1\2\0\0\vpylint\rmarkdown\1\2\0\0\17markdownlint\blua\1\2\0\0\rluacheck\15javascript\1\2\0\0\reslint_d\tfish\1\2\0\0\tfish\fclojure\1\2\0\0\14clj_kondo\bcpp\1\2\0\0\14clangtidy\ncmake\1\2\0\0\14cmakelint\6c\1\2\0\0\14clangtidy\tbash\1\0\0\1\2\0\0\15shellcheck\0", "config", "nvim-lint")

vim.cmd [[ packadd mason-nvim-dap.nvim ]]

-- Config for: mason-nvim-dap.nvim
try_loadstring("\27LJ\2\2H\0\1\3\0\3\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\1\18\2\0\0B\1\2\1K\0\1\0\18default_setup\19mason-nvim-dap\frequire≠\1\1\0\3\0\n\0\0184\0\0\0004\1\0\0=\1\0\0+\1\2\0=\1\1\0005\1\4\0003\2\3\0>\2\1\0016\2\5\0=\2\6\1=\1\2\0006\1\a\0'\2\b\0B\1\2\0029\1\t\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\19mason-nvim-dap\frequire\vcppdbg\18dap_gdb_setup\1\0\0\0\rhandlers\20automatic_setup\19ensure_install\0", "config", "mason-nvim-dap.nvim")

vim.cmd [[ packadd conform.nvim ]]

-- Config for: conform.nvim
try_loadstring("\27LJ\2\2à\3\0\0\3\0\28\0!5\0\1\0005\1\0\0=\1\2\0005\1\3\0=\1\4\0005\1\5\0=\1\6\0005\1\a\0=\1\b\0005\1\t\0=\1\n\0005\1\v\0=\1\f\0005\1\r\0=\1\14\0005\1\15\0=\1\16\0005\1\17\0=\1\18\0005\1\19\0=\1\20\0006\1\21\0009\1\22\1\18\2\0\0B\1\2\0016\1\23\0'\2\24\0B\1\2\0029\1\25\0015\2\26\0=\0\27\2B\1\2\1K\0\1\0\21formatters_by_ft\1\0\0\nsetup\fconform\frequire\18install_tools\a_G\15typescript\1\2\0\0\reslint_d\ash\1\2\0\0\nshfmt\vpython\1\2\0\0\nblack\blua\1\2\0\0\vstylua\15javascript\1\2\0\0\reslint_d\tfish\1\2\0\0\16fish_indent\bcss\1\2\0\0\14stylelint\bcpp\1\2\0\0\17clang_format\fclojure\1\2\0\0\vzprint\6c\1\0\0\1\2\0\0\17clang_format\0", "config", "conform.nvim")

vim.cmd [[ packadd mason-lspconfig.nvim ]]

-- Config for: mason-lspconfig.nvim
try_loadstring("\27LJ\2\2Æ\t\0\0\v\0/\0v4\0\0\0006\1\0\0'\2\1\0B\1\2\0026\2\0\0'\3\2\0B\2\2\0026\3\3\0006\4\0\0'\5\4\0B\3\3\0035\5\n\0009\6\5\2'\a\6\0'\b\a\0'\t\b\0'\n\t\0B\6\5\2=\6\v\0055\6\r\0005\a\f\0=\a\14\6=\6\15\5\15\0\3\0X\6\3Ä9\6\17\4B\6\1\2=\6\16\0006\6\18\0009\6\19\6B\6\1\0019\6\20\0019\6\21\6\18\a\0\0B\6\2\0019\6\22\0019\6\21\6\18\a\0\0B\6\2\0019\6\23\0019\6\21\6\18\a\0\0B\6\2\0019\6\24\0019\6\21\6\18\a\0\0B\6\2\0019\6\25\0019\6\21\6\18\a\0\0B\6\2\0019\6\26\0019\6\21\0066\a\27\0009\a\28\a'\b\29\0\18\t\0\0\18\n\5\0B\a\4\0A\6\0\0019\6\30\0019\6\21\0066\a\27\0009\a\28\a'\b\29\0\18\t\0\0\18\n\5\0B\a\4\0A\6\0\0019\6\31\0019\6\21\6\18\a\0\0B\6\2\0019\6 \0019\6\21\6\18\a\0\0B\6\2\0019\6!\0019\6\21\6\18\a\0\0B\6\2\0019\6\"\0019\6\21\6\18\a\0\0B\6\2\0019\6#\0019\6\21\6\18\a\0\0B\6\2\0019\6$\0019\6\21\6\18\a\0\0B\6\2\0016\6\27\0009\6%\0069\6&\6'\a'\0005\b(\0B\6\3\0016\6\27\0009\6%\0069\6&\6'\a)\0005\b*\0B\6\3\0016\6\27\0009\6%\0069\6&\6'\a+\0005\b,\0B\6\3\0016\6\27\0009\6%\0069\6&\6'\a-\0005\b.\0B\6\3\1K\0\1\0\1\0\3\vtexthl\23DiagnosticSignInfo\ttext\tÓ©¥ \nnumhl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\3\vtexthl\23DiagnosticSignHint\ttext\tÔêÄ \nnumhl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\3\vtexthl\23DiagnosticSignWarn\ttext\tÓ©¨ \nnumhl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\3\vtexthl\24DiagnosticSignError\ttext\tÓ™á \nnumhl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\npylsp\vlua_ls\fjulials\25java_language_server\thtml\14gradle_ls\veslint\nforce\20tbl_deep_extend\bvim\rtsserver\ncssls\ncmake\16clojure_lsp\vclangd\nsetup\vbashls\28mason_install_lsp_tools\a_G\25default_capabilities\17capabilities\rsettings\21workingDirectory\1\0\0\1\0\1\tmode\tauto\rroot_dir\1\0\0\t.git\18jsconfig.json\18tsconfig.json\17package.json\17root_pattern\17cmp_nvim_lsp\npcall\19lspconfig.util\14lspconfig\frequire\0", "config", "mason-lspconfig.nvim")

vim.cmd [[ packadd mason-nvim-lint ]]

-- Config for: mason-nvim-lint
try_loadstring("\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20mason-nvim-lint\frequire\0", "config", "mason-nvim-lint")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType lisp ++once lua require("packer.load")({'vim-sexp-mappings-for-regular-people', 'conjure'}, { ft = "lisp" }, _G.packer_plugins)]]
vim.cmd [[au FileType racket ++once lua require("packer.load")({'vim-sexp-mappings-for-regular-people', 'conjure'}, { ft = "racket" }, _G.packer_plugins)]]
vim.cmd [[au FileType scheme ++once lua require("packer.load")({'vim-sexp-mappings-for-regular-people', 'conjure'}, { ft = "scheme" }, _G.packer_plugins)]]
vim.cmd [[au FileType clojure ++once lua require("packer.load")({'vim-sexp-mappings-for-regular-people', 'conjure'}, { ft = "clojure" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
