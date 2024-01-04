local function configure()
  local configuration = {}

  configuration.api_host_cmd          = 'echo -n ""'
  configuration.api_key_cmd           = 'pass azure-openai'
  configuration.api_type_cmd          = 'echo azure'
  configuration.azure_api_base_cmd    = 'echo https://cog-smtt-chatgpt4.openai.azure.com'
  configuration.azure_api_engine_cmd  = 'echo chat'
  configuration.azure_api_version_cmd = 'echo 2023-05-15'

  configuration.openai_params = {
    model = 'gpt-4',
    frequency_penalty = 0,
    presence_penalty = 0,
    max_tokens = 2000,
    temperature = 0.3,
    top_p = 1,
    n = 1
  }

  configuration.openai_edit_params = {
    model = 'gpt-4',
    frequency_penalty = 0,
    presence_penalty = 0,
    temperature = 0.3,
    top_p = 1,
    n = 1
  }

  require('chatgpt').setup(configuration)
end

local function setup(use)
  local requires = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim'
  }

  use({ 'alejandroclaro/ChatGPT.nvim', config = configure, requires = requires })
end

return { setup = setup }

