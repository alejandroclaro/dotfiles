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
    config = { "\27LJ\2\2Í\5\0\0\3\0\23\0\0284\0\0\0'\1\1\0=\1\0\0'\1\3\0=\1\2\0'\1\5\0=\1\4\0'\1\a\0=\1\6\0'\1\t\0=\1\b\0'\1\v\0=\1\n\0005\1\r\0=\1\f\0005\1\15\0=\1\14\0005\1\18\0005\2\17\0=\2\19\1=\1\16\0006\1\20\0'\2\21\0B\1\2\0029\1\22\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\fchatgpt\frequire\fkeymaps\1\0\0\1\0\a\vaccept\n<C-y>\16toggle_diff\n<C-d>\16toggle_help\n<C-h>\20toggle_settings\n<C-o>\18cycle_windows\n<Tab>\24use_output_as_input\n<C-a>\nclose\n<C-c>\27edit_with_instructions\1\0\6\21presence_penalty\3\0\16temperature\4≥ÊÃô\3≥ÊÃ˛\3\nmodel\ngpt-4\ntop_p\3\1\6n\3\1\22frequency_penalty\3\0\23openai_edit_params\1\0\a\21presence_penalty\3\0\16temperature\4≥ÊÃô\3≥ÊÃ˛\3\nmodel\ngpt-4\15max_tokens\3–\15\6n\3\1\ntop_p\3\1\22frequency_penalty\3\0\18openai_params\20echo 2023-05-15\26azure_api_version_cmd\14echo chat\25azure_api_engine_cmd4echo https://cog-smtt-chatgpt4.openai.azure.com\23azure_api_base_cmd\15echo azure\17api_type_cmd\22pass azure-openai\16api_key_cmd\15echo -n \"\"\17api_host_cmd\0" },
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
    config = { "\27LJ\2\2ß\3\0\0\a\0\20\0\0285\0\0\0005\1\1\0005\2\2\0=\1\3\0024\3\3\0>\0\1\3=\3\4\0026\3\5\0009\3\6\3+\4\2\0=\4\a\0036\3\b\0'\4\t\0B\3\2\0029\3\n\0035\4\v\0=\2\f\4B\3\2\0016\3\5\0009\3\r\0039\3\14\3'\4\15\0005\5\18\0006\6\16\0009\6\17\6=\6\19\5B\3\3\1K\0\1\0\rcallback\1\0\0\29on_bufferline_add_buffer\a_G\vBufAdd\24nvim_create_autocmd\bapi\foptions\1\0\0\nsetup\15bufferline\frequire\18termguicolors\6o\bvim\foffsets\20separator_style\1\0\3\16diagnostics\rnvim_lsp\28show_buffer_close_icons\2\22buffer_close_icon\bÔÄç\1\3\0\0\5\5\1\0\4\ttext\18File explorer\15text_align\tleft\14highlight\14Directory\rfiletype\rneo-tree\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
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
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
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
    config = { "\27LJ\2\2´\2\0\0\b\0\17\0$6\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\0024\2\0\0005\3\3\0=\3\2\2+\3\2\0=\3\4\0029\3\5\0\18\4\2\0B\3\2\0016\3\6\0009\3\a\3'\4\b\0B\3\2\0016\3\6\0009\3\t\0039\3\n\3)\4\0\0'\5\v\0005\6\r\0009\a\f\1=\a\14\6B\3\4\0016\3\6\0009\3\t\0039\3\n\3)\4\0\0'\5\15\0005\6\16\0009\a\f\1=\a\14\6B\3\4\1K\0\1\0\1\0\0\16ColorColumn\abg\1\0\0\14selection\19BufferLineFill\16nvim_set_hl\bapi\24colorscheme dracula\bcmd\bvim\nsetup\19transparent_bg\1\0\1\abg\f#303030\vcolors\fdracula\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    after_files = { "/home/aclaro/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim/after/plugin/commands.lua" },
    config = { "\27LJ\2\2î\4\0\0\a\0\25\0$5\0\0\0005\1\1\0005\2\4\0005\3\2\0=\0\3\3=\3\5\0025\3\6\0=\1\a\3=\3\b\0026\3\t\0'\4\n\0B\3\2\0029\4\v\0039\5\f\0039\5\r\0056\6\14\0009\6\15\6B\4\3\0016\4\16\0009\4\17\0045\5\19\0=\0\3\5=\5\18\0046\4\t\0'\5\20\0B\4\2\0029\4\21\4\18\5\2\0B\4\2\0019\4\v\0039\5\f\0039\5\22\0059\6\23\0039\6\24\6B\4\3\1K\0\1\0!scope_highlight_from_extmark\fbuiltin\20SCOPE_HIGHLIGHT\nsetup\bibl\1\0\0\23rainbow_delimiters\6g\bvim\20setup_highlight\a_G\20HIGHLIGHT_SETUP\ttype\rregister\14ibl.hooks\frequire\fexclude\14filetypes\1\0\0\nscope\1\0\0\14highlight\1\0\1\fenabled\2\1\n\0\0\14dashboard\thelp\rlazyterm\nmason\rneo-tree\vnotify\15toggleterm\fTrouble\ftrouble\1\b\0\0\17RainbowGreen\18RainbowYellow\16RainbowBlue\18RainbowViolet\18RainbowOrange\16RainbowCyan\15RainbowRed\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-progress.nvim"] = {
    after = { "lualine.nvim" },
    config = { "\27LJ\2\2:\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17lsp-progress\frequire\0" },
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
    config = { "\27LJ\2\2≥\b\0\0\6\0001\2O4\0\0\0005\1\1\0005\2\2\0=\2\3\0015\2\4\0=\2\5\0015\2\a\0005\3\6\0=\3\b\2=\2\t\1=\1\0\0005\1\f\0005\2\v\0=\2\r\0015\2\14\0006\3\15\0009\3\16\3B\3\1\0?\3\0\0=\2\17\0015\2\18\0006\3\15\0009\3\19\3B\3\1\2>\3\2\0026\3\15\0009\3\20\3B\3\1\0?\3\1\0=\2\21\0014\2\0\0=\2\22\0014\2\4\0005\3\23\0>\3\1\0025\3\24\0>\3\2\0025\3\25\0>\3\3\2=\2\26\0014\2\3\0005\3\27\0>\3\1\0025\3\28\0>\3\2\2=\2\29\1=\1\n\0005\1\31\0=\1\30\0006\1 \0009\1!\0016\2 \0009\2#\0029\2$\2=\2\"\0016\1%\0'\2&\0B\1\2\0029\1'\1\18\2\0\0B\1\2\0016\1 \0009\1(\0019\1)\1'\2*\0005\3+\0B\1\3\0016\1 \0009\1(\0019\1,\1'\2-\0005\3.\0006\4%\0'\5&\0B\4\2\0029\4/\4=\0040\3B\1\3\1K\0\1\0\rcallback\frefresh\1\0\2\fpattern\29LspProgressStatusUpdated\ngroup\20lualine_augroup\tUser\24nvim_create_autocmd\1\0\1\nclear\2\20lualine_augroup\24nvim_create_augroup\bapi\nsetup\flualine\frequire\15laststatus\6o\23lualine_laststatus\6g\bvim\1\a\0\0\rfugitive\bfzf\nmason\rneo-tree\rquickfix\ftrouble\15extensions\14lualine_z\1\2\1\0\rlocation\fpadding\3\0\1\2\1\0\rprogress\fpadding\3\1\14lualine_y\1\2\1\0\rencoding\fpadding\3\1\1\2\1\0\15fileformat\fpadding\3\1\1\2\1\0\rfiletype\14icon_only\2\14lualine_x\14lualine_c\24build_lsp_component\31build_diagnostic_component\1\2\0\0\rfilename\14lualine_b\25build_diff_component\a_G\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\rsections\23disabled_filetypes\15statusline\1\0\0\1\2\0\0\14dashboard\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\25component_separators\1\0\2\tleft\5\nright\5\1\0\3\17globalstatus\2\ntheme\tauto\18icons_enabled\2\foptions\5ÄÄ¿ô\4\aÄÄ¿ô\4\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    after = { "nvim-lspconfig" },
    config = { "\27LJ\2\2Ω\1\0\0\3\0\5\0\n4\0\0\0005\1\1\0=\1\0\0006\1\2\0'\2\3\0B\1\2\0029\1\4\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\20mason-lspconfig\frequire\1\r\0\0\vbashls\vclangd\16clojure_lsp\ncmake\ncssls\veslint\14gradle_ls\14grammarly\thtml\fjulials\vlua_ls\npylsp\21ensure_installed\0" },
    loaded = true,
    only_config = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-nvim-dap.nvim"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19mason-nvim-dap\frequire\0" },
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
    after = { "conform.nvim", "mason-nvim-dap.nvim", "mason-nvim-lint" },
    config = { "\27LJ\2\0023\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.bufremove"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19mini.bufremove\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/mini.bufremove",
    url = "https://github.com/echasnovski/mini.bufremove"
  },
  ["mini.pairs"] = {
    config = { "\27LJ\2\0028\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15mini.pairs\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/mini.pairs",
    url = "https://github.com/echasnovski/mini.pairs"
  },
  ["mini.surround"] = {
    config = { "\27LJ\2\2˚\1\0\0\5\0\t\0\0196\0\0\0006\1\1\0'\2\2\0B\0\3\0034\2\0\0005\3\4\0=\3\3\0026\3\1\0'\4\5\0B\3\2\0029\3\6\3\18\4\2\0B\3\2\1\15\0\0\0X\3\3Ä9\3\a\0015\4\b\0B\3\2\1K\0\1\0\1\0\1\agS\14+Surround\rregister\nsetup\18mini.surround\1\0\a\19update_n_lines\bgSn\14highlight\bgSh\badd\bgSa\14find_left\bgSF\freplace\bgSr\tfind\bgSf\vdelete\bgSd\rmappings\14which-key\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/mini.surround",
    url = "https://github.com/echasnovski/mini.surround"
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
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    after = { "nvim-lspconfig" },
    config = { "\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire„\5\1\0\n\0%\0X6\0\0\0'\1\1\0B\0\2\0025\1\6\0005\2\2\0>\2\1\0015\2\3\0>\2\2\0015\2\4\0>\2\3\0015\2\5\0=\2\a\0014\2\0\0005\3\t\0=\3\b\0025\3\f\0003\4\v\0=\4\r\3=\3\n\0029\3\15\0009\3\14\3\18\4\1\0004\5\3\0005\6\16\0>\6\1\5B\3\3\2=\3\14\0029\3\17\0009\3\18\0039\3\19\0036\4\20\0009\4\21\4\18\5\0\0B\4\2\0A\3\0\2=\3\17\0026\3\0\0'\4\22\0B\3\2\2B\3\1\0016\3\23\0009\3\24\0039\3\25\3)\4\0\0'\5\26\0005\6\27\0B\3\4\0019\3\28\0009\3\29\0035\4\30\0005\5\31\0009\6\17\0009\6\18\0069\6\29\6B\6\1\2=\6\17\0054\6\3\0005\a \0>\a\1\6=\6\14\5B\3\3\0019\3\28\0009\3\29\3'\4!\0005\5\"\0009\6\17\0009\6\18\0069\6\29\6B\6\1\2=\6\17\0059\6\15\0009\6\14\0064\a\3\0005\b#\0>\b\1\a4\b\3\0005\t$\0>\t\1\bB\6\3\2=\6\14\5B\3\3\0016\3\0\0'\4\1\0B\3\2\0029\3\28\3\18\4\2\0B\3\2\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\nsetup\1\0\2\tlink\fComment\fdefault\2\17CmpGhostText\16nvim_set_hl\bapi\bvim\23cmp.config.default\22build_cmp_mapping\a_G\vinsert\vpreset\fmapping\1\0\1\tname\vbuffer\vconfig\fsources\vexpand\1\0\0\0\fsnippet\1\0\1\16completeopt#menu,menuone,noinsert,noselect\17confirmation\tname\1\0\0\1\2\0\0\fconjure\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\bcmp\frequire\0" },
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
    config = { "\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rtry_lint\tlint\frequire¸\3\1\0\5\0#\0&5\0\1\0005\1\0\0=\1\2\0005\1\3\0=\1\4\0005\1\5\0=\1\6\0005\1\a\0=\1\b\0005\1\t\0=\1\n\0005\1\v\0=\1\f\0005\1\r\0=\1\14\0005\1\15\0=\1\16\0005\1\17\0=\1\18\0005\1\19\0=\1\20\0005\1\21\0=\1\22\0005\1\23\0=\1\24\0003\1\25\0006\2\26\0'\3\27\0B\2\2\2=\0\28\0026\2\29\0009\2\30\0029\2\31\0025\3 \0005\4!\0=\1\"\4B\2\3\1K\0\1\0\rcallback\1\0\0\1\4\0\0\17BufWritePost\16BufReadPost\16InsertLeave\24nvim_create_autocmd\bapi\bvim\18linters_by_ft\tlint\frequire\0\15typescript\1\2\0\0\reslint_d\ash\1\2\0\0\15shellcheck\vpython\1\2\0\0\vpylint\rmarkdown\1\2\0\0\17markdownlint\blua\1\2\0\0\rluacheck\15javascript\1\2\0\0\reslint_d\tfish\1\2\0\0\tfish\fclojure\1\2\0\0\14clj_kondo\bcpp\1\2\0\0\14clangtidy\ncmake\1\2\0\0\14cmakelint\6c\1\2\0\0\14clangtidy\tbash\1\0\0\1\2\0\0\15shellcheck\0" },
    loaded = true,
    only_config = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    after = { "neodev.nvim", "lspsaga.nvim" },
    config = { "\27LJ\2\2≤\3\0\0\6\0\19\0>4\0\0\0006\1\0\0'\2\1\0B\1\2\0026\2\2\0006\3\0\0'\4\3\0B\2\3\3\15\0\2\0X\4\3Ä9\4\5\3B\4\1\2=\4\4\0009\4\6\0019\4\a\4\18\5\0\0B\4\2\0019\4\b\0019\4\a\4\18\5\0\0B\4\2\0019\4\t\0019\4\a\4\18\5\0\0B\4\2\0019\4\n\0019\4\a\4\18\5\0\0B\4\2\0019\4\v\0019\4\a\4\18\5\0\0B\4\2\0019\4\f\0019\4\a\4\18\5\0\0B\4\2\0019\4\r\0019\4\a\4\18\5\0\0B\4\2\0019\4\14\0019\4\a\4\18\5\0\0B\4\2\0019\4\15\0019\4\a\4\18\5\0\0B\4\2\0019\4\16\0019\4\a\4\18\5\0\0B\4\2\0019\4\17\0019\4\a\4\18\5\0\0B\4\2\0019\4\18\0019\4\a\4\18\5\0\0B\4\2\1K\0\1\0\npylsp\vlua_ls\fjulials\25java_language_server\thtml\14gradle_ls\veslint\ncssls\ncmake\16clojure_lsp\vclangd\nsetup\vbashls\25default_capabilities\17capabilities\17cmp_nvim_lsp\npcall\14lspconfig\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\2@\0\0\2\0\5\1\a6\0\0\0009\0\1\0006\1\2\0009\1\3\0019\1\4\1\24\1\0\1D\0\2\0\nlines\6o\bvim\nfloor\tmath\1ÄÄ†ˇ\3B\0\0\2\0\5\1\a6\0\0\0009\0\1\0006\1\2\0009\1\3\0019\1\4\1\24\1\0\1D\0\2\0\fcolumns\6o\bvim\nfloor\tmath\1ÄÄ†ˇ\3K\0\1\4\0\4\0\a6\1\0\0009\1\1\0019\1\2\1\18\2\0\0005\3\3\0B\1\3\1K\0\1\0\1\0\1\vzindex\3d\24nvim_win_set_config\bapi\bvim¥\1\1\0\4\0\v\0\0195\0\0\0003\1\1\0=\1\2\0003\1\3\0=\1\4\0003\1\5\0=\1\6\0006\1\a\0'\2\b\0B\1\2\0029\1\t\1\18\2\0\0B\1\2\0016\1\n\0006\2\a\0'\3\b\0B\2\2\2=\2\b\1K\0\1\0\bvim\nsetup\vnotify\frequire\fon_open\0\14max_width\0\15max_height\0\1\0\2\ftimeout\3∏\23\22background_colour\f#303030\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2‚\3\0\0\3\0\r\0\0184\0\0\0005\1\1\0=\1\0\0005\1\3\0=\1\2\0005\1\5\0=\1\4\0005\1\a\0005\2\b\0=\2\t\1=\1\6\0006\1\n\0'\2\v\0B\1\2\0029\1\f\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\28nvim-treesitter.configs\frequire\fkeymaps\1\0\4\19init_selection\14<C-space>\22scope_incremental\1\21node_incremental\14<C-space>\21node_decremental\t<bs>\1\0\1\venable\2\26incremental_selection\1\28\0\0\tbash\6c\fclojure\ncmake\bcpp\bcss\tdiff\tfish\thtml\15javascript\njsdoc\tjson\njsonc\blua\vluadoc\tluap\rmarkdown\20markdown_inline\vpython\nquery\nregex\ttoml\btsx\15typescript\bvim\vvimdoc\tyaml\21ensure_installed\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
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
    config = { "\27LJ\2\2z\0\0\3\0\a\0\0156\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\0019\1\3\0'\2\4\0B\1\2\0019\1\3\0'\2\5\0B\1\2\0019\1\3\0'\2\6\0B\1\2\1K\0\1\0\tundo\bfzf\vaerial\19load_extension\nsetup\14telescope\frequire\0" },
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
  ["trim.nvim"] = {
    config = { "\27LJ\2\2î\1\0\0\3\0\a\0\0164\0\0\0+\1\1\0=\1\0\0+\1\2\0=\1\1\0+\1\2\0=\1\2\0+\1\2\0=\1\3\0006\1\4\0'\2\5\0B\1\2\0029\1\6\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\ttrim\frequire\20trim_first_line\19trim_last_line\17rim_trailing\18trim_on_write\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/trim.nvim",
    url = "https://github.com/cappyzawa/trim.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["unimpaired.nvim"] = {
    config = { "\27LJ\2\2ê\29\0\0\3\0Z\0`4\0\0\0+\1\1\0=\1\0\0005\1\3\0005\2\2\0=\2\4\0015\2\5\0=\2\6\0015\2\a\0=\2\b\0015\2\t\0=\2\n\0015\2\v\0=\2\f\0015\2\r\0=\2\14\0015\2\15\0=\2\16\0015\2\17\0=\2\18\0015\2\19\0=\2\20\0015\2\21\0=\2\22\0015\2\23\0=\2\24\0015\2\25\0=\2\26\0015\2\27\0=\2\28\0015\2\29\0=\2\30\0015\2\31\0=\2 \0015\2!\0=\2\"\0015\2#\0=\2$\0015\2%\0=\2&\0015\2'\0=\2(\0015\2)\0=\2*\0015\2+\0=\2,\0015\2-\0=\2.\0015\2/\0=\0020\0015\0021\0=\0022\0015\0023\0=\0024\0015\0025\0=\0026\0015\0027\0=\0028\0015\0029\0=\2:\0015\2;\0=\2<\0015\2=\0=\2>\0015\2?\0=\2@\0015\2A\0=\2B\0015\2C\0=\2D\0015\2E\0=\2F\0015\2G\0=\2H\0015\2I\0=\2J\0015\2K\0=\2L\0015\2M\0=\2N\0015\2O\0=\2P\0015\2Q\0=\2R\0015\2S\0=\2T\0015\2U\0=\2V\1=\1\1\0006\1W\0'\2X\0B\1\2\0029\1Y\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\15unimpaired\frequire\17disable_wrap\1\0\3\16description\26Disable line wrapping\15dot_repeat\1\fmapping\b]ow\16enable_wrap\1\0\3\16description\25Enable line wrapping\15dot_repeat\1\fmapping\b[ow\24disable_virtualedit\1\0\3\16description\24Disable virtualedit\15dot_repeat\1\fmapping\b]ov\23enable_virtualedit\1\0\3\16description\23Enable virtualedit\15dot_repeat\1\fmapping\b[ov\25disable_cursorcolumn\1\0\3\16description\25Disable cursorcolumn\15dot_repeat\1\fmapping\b]ou\24enable_cursorcolumn\1\0\3\16description\24Enable cursorcolumn\15dot_repeat\1\fmapping\b[ou\24disable_colorcolumn\1\0\3\16description\24Disable colorcolumn\15dot_repeat\1\fmapping\b]ot\23enable_colorcolumn\1\0\3\16description\23Enable colorcolumn\15dot_repeat\1\fmapping\b[ot\18disable_spell\1\0\3\16description\24Disable spell check\15dot_repeat\1\fmapping\b]os\17enable_spell\1\0\3\16description\23Enable spell check\15dot_repeat\1\fmapping\b[os\17disable_list\1\0\3\16description*Hide invisible characters (listchars)\15dot_repeat\1\fmapping\b]ol\16enable_list\1\0\3\16description*Show invisible characters (listchars)\15dot_repeat\1\fmapping\b[ol\23disable_ignorecase\1\0\3\16description\23Disable ignorecase\15dot_repeat\1\fmapping\b]oi\22enable_ignorecase\1\0\3\16description\22Enable ignorecase\15dot_repeat\1\fmapping\b[oi\21disable_hlsearch\1\0\3\16description\21Disable hlsearch\15dot_repeat\1\fmapping\b]oh\20enable_hlsearch\1\0\3\16description\20Enable hlsearch\15dot_repeat\1\fmapping\b[oh\17disable_diff\1\0\3\16description\17Disable diff\15dot_repeat\1\fmapping\b]od\16enable_diff\1\0\3\16description\16Enable diff\15dot_repeat\1\fmapping\b[od\23disable_cursorline\1\0\3\16description\23Disable cursorline\15dot_repeat\1\fmapping\b]oc\22enable_cursorline\1\0\3\16description\22Enable cursorline\15dot_repeat\1\fmapping\b[oc\27exchange_section_below\1\0\3\16description$Move section [count] lines down\15dot_repeat\2\fmapping\a]e\27exchange_section_above\1\0\3\16description\"Move section [count] lines up\15dot_repeat\2\fmapping\a[e\19exchange_below\1\0\3\16description+Exchange line with [count] lines below\15dot_repeat\2\fmapping\a]e\19exchange_above\1\0\3\16description+Exchange line with [count] lines above\15dot_repeat\2\fmapping\a[e\16blank_below\1\0\3\16description\"Add [count] blank lines below\15dot_repeat\2\fmapping\r]<Space>\16blank_above\1\0\3\16description\"Add [count] blank lines above\15dot_repeat\2\fmapping\r[<Space>\ntlast\1\0\3\16description\30Jump to last matching tag\15dot_repeat\1\fmapping\a]T\vtfirst\1\0\3\16description\31Jump to first matching tag\15dot_repeat\1\fmapping\a[T\ntnext\1\0\3\16description&Jump to [count] next matching tag\15dot_repeat\1\fmapping\a]t\14tprevious\1\0\3\16description*Jump to [count] previous matching tag\15dot_repeat\1\fmapping\a[t\nclast\1\0\3\16description!Jump to last entry in qflist\15dot_repeat\1\fmapping\a]Q\vcfirst\1\0\3\16description\"Jump to first entry in qflist\15dot_repeat\1\fmapping\a[Q\ncnext\1\0\3\16description)Jump to [count] next entry in qflist\15dot_repeat\1\fmapping\a]q\14cprevious\1\0\3\16description-Jump to [count] previous entry in qflist\15dot_repeat\1\fmapping\a[q\nllast\1\0\3\16description\"Jump to last entry in loclist\15dot_repeat\1\fmapping\a]L\vlfirst\1\0\3\16description#Jump to first entry in loclist\15dot_repeat\1\fmapping\a[L\nlnext\1\0\3\16description*Jump to [count] next entry in loclist\15dot_repeat\1\fmapping\a]l\14lprevious\1\0\3\16description.Jump to [count] previous entry in loclist\15dot_repeat\1\fmapping\a[l\nblast\1\0\3\16description\24Jump to last buffer\15dot_repeat\1\fmapping\a]B\vbfirst\1\0\3\16description\25Jump to first buffer\15dot_repeat\1\fmapping\a[B\nbnext\1\0\3\16description Jump to [count] next buffer\15dot_repeat\1\fmapping\a]b\14bprevious\1\0\0\1\0\3\16description$Jump to [count] previous buffer\15dot_repeat\1\fmapping\a[b\fkeymaps\20default_keymaps\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/unimpaired.nvim",
    url = "https://github.com/tummetott/unimpaired.nvim"
  },
  ["vim-easymotion"] = {
    config = { "\27LJ\2\2à\1\0\0\2\0\5\0\r6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0K\0\1\0 EasyMotion_use_smartsign_us\25EasyMotion_smartcase\26EasyMotion_do_mapping\6g\bvim\0" },
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/aclaro/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
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
    after = { "mini.surround" },
    config = { "\27LJ\2\2≠\2\0\0\4\0\14\0\0196\0\0\0'\1\1\0B\0\2\0025\1\3\0005\2\2\0=\2\4\0015\2\6\0005\3\5\0=\3\a\0025\3\b\0=\3\t\2=\2\n\0019\2\v\0\18\3\1\0B\2\2\0019\2\f\0005\3\r\0B\2\2\1K\0\1\0\1\0\6\14<leader>s\f+Search\19<localleader>c\n+Code\14<leader>b\f+Buffer\14<leader>o\n+Open\19<localleader>t\n+Test\19<localleader>d\v+Debug\rregister\nsetup\23triggers_blacklist\6v\1\3\0\0\6j\6k\6i\1\0\0\1\3\0\0\6j\6k\fplugins\1\0\0\1\0\1\rspelling\2\14which-key\frequire\0" },
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
try_loadstring("\27LJ\2\2‚\3\0\0\3\0\r\0\0184\0\0\0005\1\1\0=\1\0\0005\1\3\0=\1\2\0005\1\5\0=\1\4\0005\1\a\0005\2\b\0=\2\t\1=\1\6\0006\1\n\0'\2\v\0B\1\2\0029\1\f\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\28nvim-treesitter.configs\frequire\fkeymaps\1\0\4\19init_selection\14<C-space>\22scope_incremental\1\21node_incremental\14<C-space>\21node_decremental\t<bs>\1\0\1\venable\2\26incremental_selection\1\28\0\0\tbash\6c\fclojure\ncmake\bcpp\bcss\tdiff\tfish\thtml\15javascript\njsdoc\tjson\njsonc\blua\vluadoc\tluap\rmarkdown\20markdown_inline\vpython\nquery\nregex\ttoml\btsx\15typescript\bvim\vvimdoc\tyaml\21ensure_installed\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2≠\2\0\0\4\0\14\0\0196\0\0\0'\1\1\0B\0\2\0025\1\3\0005\2\2\0=\2\4\0015\2\6\0005\3\5\0=\3\a\0025\3\b\0=\3\t\2=\2\n\0019\2\v\0\18\3\1\0B\2\2\0019\2\f\0005\3\r\0B\2\2\1K\0\1\0\1\0\6\14<leader>s\f+Search\19<localleader>c\n+Code\14<leader>b\f+Buffer\14<leader>o\n+Open\19<localleader>t\n+Test\19<localleader>d\v+Debug\rregister\nsetup\23triggers_blacklist\6v\1\3\0\0\6j\6k\6i\1\0\0\1\3\0\0\6j\6k\fplugins\1\0\0\1\0\1\rspelling\2\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: dracula.nvim
time([[Config for dracula.nvim]], true)
try_loadstring("\27LJ\2\2´\2\0\0\b\0\17\0$6\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\0024\2\0\0005\3\3\0=\3\2\2+\3\2\0=\3\4\0029\3\5\0\18\4\2\0B\3\2\0016\3\6\0009\3\a\3'\4\b\0B\3\2\0016\3\6\0009\3\t\0039\3\n\3)\4\0\0'\5\v\0005\6\r\0009\a\f\1=\a\14\6B\3\4\0016\3\6\0009\3\t\0039\3\n\3)\4\0\0'\5\15\0005\6\16\0009\a\f\1=\a\14\6B\3\4\1K\0\1\0\1\0\0\16ColorColumn\abg\1\0\0\14selection\19BufferLineFill\16nvim_set_hl\bapi\24colorscheme dracula\bcmd\bvim\nsetup\19transparent_bg\1\0\1\abg\f#303030\vcolors\fdracula\frequire\0", "config", "dracula.nvim")
time([[Config for dracula.nvim]], false)
-- Config for: lsp-progress.nvim
time([[Config for lsp-progress.nvim]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17lsp-progress\frequire\0", "config", "lsp-progress.nvim")
time([[Config for lsp-progress.nvim]], false)
-- Config for: rainbow-delimiters.nvim
time([[Config for rainbow-delimiters.nvim]], true)
try_loadstring("\27LJ\2\2–\1\0\0\6\0\v\0\0186\0\0\0'\1\1\0B\0\2\0025\1\4\0009\2\2\0009\2\3\2=\2\5\0015\2\6\0005\3\a\0=\1\2\3=\2\b\0036\4\0\0'\5\t\0B\4\2\0029\4\n\4\18\5\3\0B\4\2\1K\0\1\0\nsetup\29rainbow-delimiters.setup\nquery\1\0\0\1\0\2\blua\19rainbow-blocks\5\23rainbow-delimiters\5\1\0\0\vglobal\rstrategy\23rainbow-delimiters\frequire\0", "config", "rainbow-delimiters.nvim")
time([[Config for rainbow-delimiters.nvim]], false)
-- Config for: mini.pairs
time([[Config for mini.pairs]], true)
try_loadstring("\27LJ\2\0028\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15mini.pairs\frequire\0", "config", "mini.pairs")
time([[Config for mini.pairs]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\0024\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vaerial\frequire\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\2\"\0\0\2\1\1\0\5-\0\0\0009\0\0\0004\1\0\0B\0\2\1K\0\1\0\1¿\topen#\0\0\2\1\1\0\5-\0\0\0009\0\0\0004\1\0\0B\0\2\1K\0\1\0\1¿\nclose#\0\0\2\1\1\0\5-\0\0\0009\0\0\0004\1\0\0B\0\2\1K\0\1\0\1¿\nclose⁄\1\1\0\4\0\14\0\0256\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\1B\2\1\0019\2\4\0009\2\5\0029\2\6\0023\3\b\0=\3\a\0029\2\4\0009\2\t\0029\2\n\0023\3\v\0=\3\a\0029\2\4\0009\2\t\0029\2\f\0023\3\r\0=\3\a\0022\0\0ÄK\0\1\0\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\nsetup\ndapui\bdap\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\2@\0\0\2\0\5\1\a6\0\0\0009\0\1\0006\1\2\0009\1\3\0019\1\4\1\24\1\0\1D\0\2\0\nlines\6o\bvim\nfloor\tmath\1ÄÄ†ˇ\3B\0\0\2\0\5\1\a6\0\0\0009\0\1\0006\1\2\0009\1\3\0019\1\4\1\24\1\0\1D\0\2\0\fcolumns\6o\bvim\nfloor\tmath\1ÄÄ†ˇ\3K\0\1\4\0\4\0\a6\1\0\0009\1\1\0019\1\2\1\18\2\0\0005\3\3\0B\1\3\1K\0\1\0\1\0\1\vzindex\3d\24nvim_win_set_config\bapi\bvim¥\1\1\0\4\0\v\0\0195\0\0\0003\1\1\0=\1\2\0003\1\3\0=\1\4\0003\1\5\0=\1\6\0006\1\a\0'\2\b\0B\1\2\0029\1\t\1\18\2\0\0B\1\2\0016\1\n\0006\2\a\0'\3\b\0B\2\2\2=\2\b\1K\0\1\0\bvim\nsetup\vnotify\frequire\fon_open\0\14max_width\0\15max_height\0\1\0\2\ftimeout\3∏\23\22background_colour\f#303030\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\2Ω\1\0\0\3\0\5\0\n4\0\0\0005\1\1\0=\1\0\0006\1\2\0'\2\3\0B\1\2\0029\1\4\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\20mason-lspconfig\frequire\1\r\0\0\vbashls\vclangd\16clojure_lsp\ncmake\ncssls\veslint\14gradle_ls\14grammarly\thtml\fjulials\vlua_ls\npylsp\21ensure_installed\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: mini.bufremove
time([[Config for mini.bufremove]], true)
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19mini.bufremove\frequire\0", "config", "mini.bufremove")
time([[Config for mini.bufremove]], false)
-- Config for: unimpaired.nvim
time([[Config for unimpaired.nvim]], true)
try_loadstring("\27LJ\2\2ê\29\0\0\3\0Z\0`4\0\0\0+\1\1\0=\1\0\0005\1\3\0005\2\2\0=\2\4\0015\2\5\0=\2\6\0015\2\a\0=\2\b\0015\2\t\0=\2\n\0015\2\v\0=\2\f\0015\2\r\0=\2\14\0015\2\15\0=\2\16\0015\2\17\0=\2\18\0015\2\19\0=\2\20\0015\2\21\0=\2\22\0015\2\23\0=\2\24\0015\2\25\0=\2\26\0015\2\27\0=\2\28\0015\2\29\0=\2\30\0015\2\31\0=\2 \0015\2!\0=\2\"\0015\2#\0=\2$\0015\2%\0=\2&\0015\2'\0=\2(\0015\2)\0=\2*\0015\2+\0=\2,\0015\2-\0=\2.\0015\2/\0=\0020\0015\0021\0=\0022\0015\0023\0=\0024\0015\0025\0=\0026\0015\0027\0=\0028\0015\0029\0=\2:\0015\2;\0=\2<\0015\2=\0=\2>\0015\2?\0=\2@\0015\2A\0=\2B\0015\2C\0=\2D\0015\2E\0=\2F\0015\2G\0=\2H\0015\2I\0=\2J\0015\2K\0=\2L\0015\2M\0=\2N\0015\2O\0=\2P\0015\2Q\0=\2R\0015\2S\0=\2T\0015\2U\0=\2V\1=\1\1\0006\1W\0'\2X\0B\1\2\0029\1Y\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\15unimpaired\frequire\17disable_wrap\1\0\3\16description\26Disable line wrapping\15dot_repeat\1\fmapping\b]ow\16enable_wrap\1\0\3\16description\25Enable line wrapping\15dot_repeat\1\fmapping\b[ow\24disable_virtualedit\1\0\3\16description\24Disable virtualedit\15dot_repeat\1\fmapping\b]ov\23enable_virtualedit\1\0\3\16description\23Enable virtualedit\15dot_repeat\1\fmapping\b[ov\25disable_cursorcolumn\1\0\3\16description\25Disable cursorcolumn\15dot_repeat\1\fmapping\b]ou\24enable_cursorcolumn\1\0\3\16description\24Enable cursorcolumn\15dot_repeat\1\fmapping\b[ou\24disable_colorcolumn\1\0\3\16description\24Disable colorcolumn\15dot_repeat\1\fmapping\b]ot\23enable_colorcolumn\1\0\3\16description\23Enable colorcolumn\15dot_repeat\1\fmapping\b[ot\18disable_spell\1\0\3\16description\24Disable spell check\15dot_repeat\1\fmapping\b]os\17enable_spell\1\0\3\16description\23Enable spell check\15dot_repeat\1\fmapping\b[os\17disable_list\1\0\3\16description*Hide invisible characters (listchars)\15dot_repeat\1\fmapping\b]ol\16enable_list\1\0\3\16description*Show invisible characters (listchars)\15dot_repeat\1\fmapping\b[ol\23disable_ignorecase\1\0\3\16description\23Disable ignorecase\15dot_repeat\1\fmapping\b]oi\22enable_ignorecase\1\0\3\16description\22Enable ignorecase\15dot_repeat\1\fmapping\b[oi\21disable_hlsearch\1\0\3\16description\21Disable hlsearch\15dot_repeat\1\fmapping\b]oh\20enable_hlsearch\1\0\3\16description\20Enable hlsearch\15dot_repeat\1\fmapping\b[oh\17disable_diff\1\0\3\16description\17Disable diff\15dot_repeat\1\fmapping\b]od\16enable_diff\1\0\3\16description\16Enable diff\15dot_repeat\1\fmapping\b[od\23disable_cursorline\1\0\3\16description\23Disable cursorline\15dot_repeat\1\fmapping\b]oc\22enable_cursorline\1\0\3\16description\22Enable cursorline\15dot_repeat\1\fmapping\b[oc\27exchange_section_below\1\0\3\16description$Move section [count] lines down\15dot_repeat\2\fmapping\a]e\27exchange_section_above\1\0\3\16description\"Move section [count] lines up\15dot_repeat\2\fmapping\a[e\19exchange_below\1\0\3\16description+Exchange line with [count] lines below\15dot_repeat\2\fmapping\a]e\19exchange_above\1\0\3\16description+Exchange line with [count] lines above\15dot_repeat\2\fmapping\a[e\16blank_below\1\0\3\16description\"Add [count] blank lines below\15dot_repeat\2\fmapping\r]<Space>\16blank_above\1\0\3\16description\"Add [count] blank lines above\15dot_repeat\2\fmapping\r[<Space>\ntlast\1\0\3\16description\30Jump to last matching tag\15dot_repeat\1\fmapping\a]T\vtfirst\1\0\3\16description\31Jump to first matching tag\15dot_repeat\1\fmapping\a[T\ntnext\1\0\3\16description&Jump to [count] next matching tag\15dot_repeat\1\fmapping\a]t\14tprevious\1\0\3\16description*Jump to [count] previous matching tag\15dot_repeat\1\fmapping\a[t\nclast\1\0\3\16description!Jump to last entry in qflist\15dot_repeat\1\fmapping\a]Q\vcfirst\1\0\3\16description\"Jump to first entry in qflist\15dot_repeat\1\fmapping\a[Q\ncnext\1\0\3\16description)Jump to [count] next entry in qflist\15dot_repeat\1\fmapping\a]q\14cprevious\1\0\3\16description-Jump to [count] previous entry in qflist\15dot_repeat\1\fmapping\a[q\nllast\1\0\3\16description\"Jump to last entry in loclist\15dot_repeat\1\fmapping\a]L\vlfirst\1\0\3\16description#Jump to first entry in loclist\15dot_repeat\1\fmapping\a[L\nlnext\1\0\3\16description*Jump to [count] next entry in loclist\15dot_repeat\1\fmapping\a]l\14lprevious\1\0\3\16description.Jump to [count] previous entry in loclist\15dot_repeat\1\fmapping\a[l\nblast\1\0\3\16description\24Jump to last buffer\15dot_repeat\1\fmapping\a]B\vbfirst\1\0\3\16description\25Jump to first buffer\15dot_repeat\1\fmapping\a[B\nbnext\1\0\3\16description Jump to [count] next buffer\15dot_repeat\1\fmapping\a]b\14bprevious\1\0\0\1\0\3\16description$Jump to [count] previous buffer\15dot_repeat\1\fmapping\a[b\fkeymaps\20default_keymaps\0", "config", "unimpaired.nvim")
time([[Config for unimpaired.nvim]], false)
-- Config for: nvim-lint
time([[Config for nvim-lint]], true)
try_loadstring("\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rtry_lint\tlint\frequire¸\3\1\0\5\0#\0&5\0\1\0005\1\0\0=\1\2\0005\1\3\0=\1\4\0005\1\5\0=\1\6\0005\1\a\0=\1\b\0005\1\t\0=\1\n\0005\1\v\0=\1\f\0005\1\r\0=\1\14\0005\1\15\0=\1\16\0005\1\17\0=\1\18\0005\1\19\0=\1\20\0005\1\21\0=\1\22\0005\1\23\0=\1\24\0003\1\25\0006\2\26\0'\3\27\0B\2\2\2=\0\28\0026\2\29\0009\2\30\0029\2\31\0025\3 \0005\4!\0=\1\"\4B\2\3\1K\0\1\0\rcallback\1\0\0\1\4\0\0\17BufWritePost\16BufReadPost\16InsertLeave\24nvim_create_autocmd\bapi\bvim\18linters_by_ft\tlint\frequire\0\15typescript\1\2\0\0\reslint_d\ash\1\2\0\0\15shellcheck\vpython\1\2\0\0\vpylint\rmarkdown\1\2\0\0\17markdownlint\blua\1\2\0\0\rluacheck\15javascript\1\2\0\0\reslint_d\tfish\1\2\0\0\tfish\fclojure\1\2\0\0\14clj_kondo\bcpp\1\2\0\0\14clangtidy\ncmake\1\2\0\0\14cmakelint\6c\1\2\0\0\14clangtidy\tbash\1\0\0\1\2\0\0\15shellcheck\0", "config", "nvim-lint")
time([[Config for nvim-lint]], false)
-- Config for: trim.nvim
time([[Config for trim.nvim]], true)
try_loadstring("\27LJ\2\2î\1\0\0\3\0\a\0\0164\0\0\0+\1\1\0=\1\0\0+\1\2\0=\1\1\0+\1\2\0=\1\2\0+\1\2\0=\1\3\0006\1\4\0'\2\5\0B\1\2\0029\1\6\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\ttrim\frequire\20trim_first_line\19trim_last_line\17rim_trailing\18trim_on_write\0", "config", "trim.nvim")
time([[Config for trim.nvim]], false)
-- Config for: vim-easymotion
time([[Config for vim-easymotion]], true)
try_loadstring("\27LJ\2\2à\1\0\0\2\0\5\0\r6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0K\0\1\0 EasyMotion_use_smartsign_us\25EasyMotion_smartcase\26EasyMotion_do_mapping\6g\bvim\0", "config", "vim-easymotion")
time([[Config for vim-easymotion]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\2ß\3\0\0\a\0\20\0\0285\0\0\0005\1\1\0005\2\2\0=\1\3\0024\3\3\0>\0\1\3=\3\4\0026\3\5\0009\3\6\3+\4\2\0=\4\a\0036\3\b\0'\4\t\0B\3\2\0029\3\n\0035\4\v\0=\2\f\4B\3\2\0016\3\5\0009\3\r\0039\3\14\3'\4\15\0005\5\18\0006\6\16\0009\6\17\6=\6\19\5B\3\3\1K\0\1\0\rcallback\1\0\0\29on_bufferline_add_buffer\a_G\vBufAdd\24nvim_create_autocmd\bapi\foptions\1\0\0\nsetup\15bufferline\frequire\18termguicolors\6o\bvim\foffsets\20separator_style\1\0\3\16diagnostics\rnvim_lsp\28show_buffer_close_icons\2\22buffer_close_icon\bÔÄç\1\3\0\0\5\5\1\0\4\ttext\18File explorer\15text_align\tleft\14highlight\14Directory\rfiletype\rneo-tree\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\2 \1\0\0\3\0\a\0\r6\0\0\0'\1\1\0B\0\2\0029\1\2\0009\1\3\0015\2\4\0B\1\2\0016\1\0\0'\2\5\0B\1\2\0029\1\6\1B\1\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\1\0\3\24enable_autosnippets\2\fhistory\2\17updateevents\29TextChanged,TextChangedI\15set_config\vconfig\fluasnip\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-dap ]]
vim.cmd [[ packadd nvim-cmp ]]

-- Config for: nvim-cmp
try_loadstring("\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire„\5\1\0\n\0%\0X6\0\0\0'\1\1\0B\0\2\0025\1\6\0005\2\2\0>\2\1\0015\2\3\0>\2\2\0015\2\4\0>\2\3\0015\2\5\0=\2\a\0014\2\0\0005\3\t\0=\3\b\0025\3\f\0003\4\v\0=\4\r\3=\3\n\0029\3\15\0009\3\14\3\18\4\1\0004\5\3\0005\6\16\0>\6\1\5B\3\3\2=\3\14\0029\3\17\0009\3\18\0039\3\19\0036\4\20\0009\4\21\4\18\5\0\0B\4\2\0A\3\0\2=\3\17\0026\3\0\0'\4\22\0B\3\2\2B\3\1\0016\3\23\0009\3\24\0039\3\25\3)\4\0\0'\5\26\0005\6\27\0B\3\4\0019\3\28\0009\3\29\0035\4\30\0005\5\31\0009\6\17\0009\6\18\0069\6\29\6B\6\1\2=\6\17\0054\6\3\0005\a \0>\a\1\6=\6\14\5B\3\3\0019\3\28\0009\3\29\3'\4!\0005\5\"\0009\6\17\0009\6\18\0069\6\29\6B\6\1\2=\6\17\0059\6\15\0009\6\14\0064\a\3\0005\b#\0>\b\1\a4\b\3\0005\t$\0>\t\1\bB\6\3\2=\6\14\5B\3\3\0016\3\0\0'\4\1\0B\3\2\0029\3\28\3\18\4\2\0B\3\2\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\nsetup\1\0\2\tlink\fComment\fdefault\2\17CmpGhostText\16nvim_set_hl\bapi\bvim\23cmp.config.default\22build_cmp_mapping\a_G\vinsert\vpreset\fmapping\1\0\1\tname\vbuffer\vconfig\fsources\vexpand\1\0\0\0\fsnippet\1\0\1\16completeopt#menu,menuone,noinsert,noselect\17confirmation\tname\1\0\0\1\2\0\0\fconjure\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\bcmp\frequire\0", "config", "nvim-cmp")

vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
try_loadstring("\27LJ\2\2≥\b\0\0\6\0001\2O4\0\0\0005\1\1\0005\2\2\0=\2\3\0015\2\4\0=\2\5\0015\2\a\0005\3\6\0=\3\b\2=\2\t\1=\1\0\0005\1\f\0005\2\v\0=\2\r\0015\2\14\0006\3\15\0009\3\16\3B\3\1\0?\3\0\0=\2\17\0015\2\18\0006\3\15\0009\3\19\3B\3\1\2>\3\2\0026\3\15\0009\3\20\3B\3\1\0?\3\1\0=\2\21\0014\2\0\0=\2\22\0014\2\4\0005\3\23\0>\3\1\0025\3\24\0>\3\2\0025\3\25\0>\3\3\2=\2\26\0014\2\3\0005\3\27\0>\3\1\0025\3\28\0>\3\2\2=\2\29\1=\1\n\0005\1\31\0=\1\30\0006\1 \0009\1!\0016\2 \0009\2#\0029\2$\2=\2\"\0016\1%\0'\2&\0B\1\2\0029\1'\1\18\2\0\0B\1\2\0016\1 \0009\1(\0019\1)\1'\2*\0005\3+\0B\1\3\0016\1 \0009\1(\0019\1,\1'\2-\0005\3.\0006\4%\0'\5&\0B\4\2\0029\4/\4=\0040\3B\1\3\1K\0\1\0\rcallback\frefresh\1\0\2\fpattern\29LspProgressStatusUpdated\ngroup\20lualine_augroup\tUser\24nvim_create_autocmd\1\0\1\nclear\2\20lualine_augroup\24nvim_create_augroup\bapi\nsetup\flualine\frequire\15laststatus\6o\23lualine_laststatus\6g\bvim\1\a\0\0\rfugitive\bfzf\nmason\rneo-tree\rquickfix\ftrouble\15extensions\14lualine_z\1\2\1\0\rlocation\fpadding\3\0\1\2\1\0\rprogress\fpadding\3\1\14lualine_y\1\2\1\0\rencoding\fpadding\3\1\1\2\1\0\15fileformat\fpadding\3\1\1\2\1\0\rfiletype\14icon_only\2\14lualine_x\14lualine_c\24build_lsp_component\31build_diagnostic_component\1\2\0\0\rfilename\14lualine_b\25build_diff_component\a_G\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\rsections\23disabled_filetypes\15statusline\1\0\0\1\2\0\0\14dashboard\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\25component_separators\1\0\2\tleft\5\nright\5\1\0\3\17globalstatus\2\ntheme\tauto\18icons_enabled\2\foptions\5ÄÄ¿ô\4\aÄÄ¿ô\4\0", "config", "lualine.nvim")

vim.cmd [[ packadd nvim-lspconfig ]]

-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\2≤\3\0\0\6\0\19\0>4\0\0\0006\1\0\0'\2\1\0B\1\2\0026\2\2\0006\3\0\0'\4\3\0B\2\3\3\15\0\2\0X\4\3Ä9\4\5\3B\4\1\2=\4\4\0009\4\6\0019\4\a\4\18\5\0\0B\4\2\0019\4\b\0019\4\a\4\18\5\0\0B\4\2\0019\4\t\0019\4\a\4\18\5\0\0B\4\2\0019\4\n\0019\4\a\4\18\5\0\0B\4\2\0019\4\v\0019\4\a\4\18\5\0\0B\4\2\0019\4\f\0019\4\a\4\18\5\0\0B\4\2\0019\4\r\0019\4\a\4\18\5\0\0B\4\2\0019\4\14\0019\4\a\4\18\5\0\0B\4\2\0019\4\15\0019\4\a\4\18\5\0\0B\4\2\0019\4\16\0019\4\a\4\18\5\0\0B\4\2\0019\4\17\0019\4\a\4\18\5\0\0B\4\2\0019\4\18\0019\4\a\4\18\5\0\0B\4\2\1K\0\1\0\npylsp\vlua_ls\fjulials\25java_language_server\thtml\14gradle_ls\veslint\ncssls\ncmake\16clojure_lsp\vclangd\nsetup\vbashls\25default_capabilities\17capabilities\17cmp_nvim_lsp\npcall\14lspconfig\frequire\0", "config", "nvim-lspconfig")

vim.cmd [[ packadd neodev.nvim ]]

-- Config for: neodev.nvim
try_loadstring("\27LJ\2\0024\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vneodev\frequire\0", "config", "neodev.nvim")

vim.cmd [[ packadd lspsaga.nvim ]]

-- Config for: lspsaga.nvim
try_loadstring("\27LJ\2\2£\1\0\0\3\0\a\0\f4\0\0\0005\1\1\0=\1\0\0005\1\3\0=\1\2\0006\1\4\0'\2\5\0B\1\2\0029\1\6\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\flspsaga\frequire\1\0\4\17hide_keyword\2\14show_file\1\15color_mode\1\venable\1\21symbol_in_winbar\1\0\1\venable\1\14lightbulb\0", "config", "lspsaga.nvim")

vim.cmd [[ packadd telescope.nvim ]]
vim.cmd [[ packadd ChatGPT.nvim ]]

-- Config for: ChatGPT.nvim
try_loadstring("\27LJ\2\2Í\5\0\0\3\0\23\0\0284\0\0\0'\1\1\0=\1\0\0'\1\3\0=\1\2\0'\1\5\0=\1\4\0'\1\a\0=\1\6\0'\1\t\0=\1\b\0'\1\v\0=\1\n\0005\1\r\0=\1\f\0005\1\15\0=\1\14\0005\1\18\0005\2\17\0=\2\19\1=\1\16\0006\1\20\0'\2\21\0B\1\2\0029\1\22\1\18\2\0\0B\1\2\1K\0\1\0\nsetup\fchatgpt\frequire\fkeymaps\1\0\0\1\0\a\vaccept\n<C-y>\16toggle_diff\n<C-d>\16toggle_help\n<C-h>\20toggle_settings\n<C-o>\18cycle_windows\n<Tab>\24use_output_as_input\n<C-a>\nclose\n<C-c>\27edit_with_instructions\1\0\6\21presence_penalty\3\0\16temperature\4≥ÊÃô\3≥ÊÃ˛\3\nmodel\ngpt-4\ntop_p\3\1\6n\3\1\22frequency_penalty\3\0\23openai_edit_params\1\0\a\21presence_penalty\3\0\16temperature\4≥ÊÃô\3≥ÊÃ˛\3\nmodel\ngpt-4\15max_tokens\3–\15\6n\3\1\ntop_p\3\1\22frequency_penalty\3\0\18openai_params\20echo 2023-05-15\26azure_api_version_cmd\14echo chat\25azure_api_engine_cmd4echo https://cog-smtt-chatgpt4.openai.azure.com\23azure_api_base_cmd\15echo azure\17api_type_cmd\22pass azure-openai\16api_key_cmd\15echo -n \"\"\17api_host_cmd\0", "config", "ChatGPT.nvim")

vim.cmd [[ packadd telescope-undo.nvim ]]
vim.cmd [[ packadd telescope-fzf-native.nvim ]]

-- Config for: telescope-fzf-native.nvim
try_loadstring("\27LJ\2\2z\0\0\3\0\a\0\0156\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\0019\1\3\0'\2\4\0B\1\2\0019\1\3\0'\2\5\0B\1\2\0019\1\3\0'\2\6\0B\1\2\1K\0\1\0\tundo\bfzf\vaerial\19load_extension\nsetup\14telescope\frequire\0", "config", "telescope-fzf-native.nvim")

vim.cmd [[ packadd indent-blankline.nvim ]]

-- Config for: indent-blankline.nvim
try_loadstring("\27LJ\2\2î\4\0\0\a\0\25\0$5\0\0\0005\1\1\0005\2\4\0005\3\2\0=\0\3\3=\3\5\0025\3\6\0=\1\a\3=\3\b\0026\3\t\0'\4\n\0B\3\2\0029\4\v\0039\5\f\0039\5\r\0056\6\14\0009\6\15\6B\4\3\0016\4\16\0009\4\17\0045\5\19\0=\0\3\5=\5\18\0046\4\t\0'\5\20\0B\4\2\0029\4\21\4\18\5\2\0B\4\2\0019\4\v\0039\5\f\0039\5\22\0059\6\23\0039\6\24\6B\4\3\1K\0\1\0!scope_highlight_from_extmark\fbuiltin\20SCOPE_HIGHLIGHT\nsetup\bibl\1\0\0\23rainbow_delimiters\6g\bvim\20setup_highlight\a_G\20HIGHLIGHT_SETUP\ttype\rregister\14ibl.hooks\frequire\fexclude\14filetypes\1\0\0\nscope\1\0\0\14highlight\1\0\1\fenabled\2\1\n\0\0\14dashboard\thelp\rlazyterm\nmason\rneo-tree\vnotify\15toggleterm\fTrouble\ftrouble\1\b\0\0\17RainbowGreen\18RainbowYellow\16RainbowBlue\18RainbowViolet\18RainbowOrange\16RainbowCyan\15RainbowRed\0", "config", "indent-blankline.nvim")

vim.cmd [[ packadd mini.surround ]]

-- Config for: mini.surround
try_loadstring("\27LJ\2\2˚\1\0\0\5\0\t\0\0196\0\0\0006\1\1\0'\2\2\0B\0\3\0034\2\0\0005\3\4\0=\3\3\0026\3\1\0'\4\5\0B\3\2\0029\3\6\3\18\4\2\0B\3\2\1\15\0\0\0X\3\3Ä9\3\a\0015\4\b\0B\3\2\1K\0\1\0\1\0\1\agS\14+Surround\rregister\nsetup\18mini.surround\1\0\a\19update_n_lines\bgSn\14highlight\bgSh\badd\bgSa\14find_left\bgSF\freplace\bgSr\tfind\bgSf\vdelete\bgSd\rmappings\14which-key\frequire\npcall\0", "config", "mini.surround")

vim.cmd [[ packadd mason-nvim-lint ]]

-- Config for: mason-nvim-lint
try_loadstring("\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20mason-nvim-lint\frequire\0", "config", "mason-nvim-lint")

vim.cmd [[ packadd mason-nvim-dap.nvim ]]

-- Config for: mason-nvim-dap.nvim
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19mason-nvim-dap\frequire\0", "config", "mason-nvim-dap.nvim")

vim.cmd [[ packadd conform.nvim ]]

-- Config for: conform.nvim
try_loadstring("\27LJ\2\2à\3\0\0\3\0\28\0!5\0\1\0005\1\0\0=\1\2\0005\1\3\0=\1\4\0005\1\5\0=\1\6\0005\1\a\0=\1\b\0005\1\t\0=\1\n\0005\1\v\0=\1\f\0005\1\r\0=\1\14\0005\1\15\0=\1\16\0005\1\17\0=\1\18\0005\1\19\0=\1\20\0006\1\21\0009\1\22\1\18\2\0\0B\1\2\0016\1\23\0'\2\24\0B\1\2\0029\1\25\0015\2\26\0=\0\27\2B\1\2\1K\0\1\0\21formatters_by_ft\1\0\0\nsetup\fconform\frequire\18install_tools\a_G\15typescript\1\2\0\0\reslint_d\ash\1\2\0\0\nshfmt\vpython\1\2\0\0\nblack\blua\1\2\0\0\vstylua\15javascript\1\2\0\0\reslint_d\tfish\1\2\0\0\16fish_indent\bcss\1\2\0\0\14stylelint\bcpp\1\2\0\0\17clang_format\fclojure\1\2\0\0\vzprint\6c\1\0\0\1\2\0\0\17clang_format\0", "config", "conform.nvim")

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
