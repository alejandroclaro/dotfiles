local function setup(keymap)
  keymap.normal.add_group('<leader>a', '+Assistance (AI)')
  keymap.visual.add_group('<leader>a', '+Assistance (AI)')

  keymap.normal.set('<leader>aa', '<cmd>ChatGPT<cr>', 'Open AI chat window')

  keymap.set({ 'n', 'v' }, '<leader>ad', '<cmd>ChatGPTRun docstring<cr>', 'Document function')
  keymap.set({ 'n', 'v' }, '<leader>ae', '<cmd>ChatGPTEditWithInstruction<cr>', 'Edit with instructions')
  keymap.set({ 'n', 'v' }, '<leader>at', '<cmd>ChatGPTRun translate<cr>', 'Translate to English')
  keymap.set({ 'n', 'v' }, '<leader>ag', '<cmd>ChatGPTRun grammar_correction<cr>', 'Correct grammar')
  keymap.set({ 'n', 'v' }, '<leader>ak', '<cmd>ChatGPTRun keywords<cr>', 'Extract the main keywords')
  keymap.set({ 'n', 'v' }, '<leader>as', '<cmd>ChatGPTRun summarize<cr>', 'Summarize the text')
  keymap.set({ 'n', 'v' }, '<leader>ar', '<cmd>ChatGPTRun code_readability_analysis<cr>', 'Analyze readability')
  keymap.set({ 'n', 'v' }, '<leader>ax', '<cmd>ChatGPTRun explain_code<cr>', 'Explain the code')
  keymap.set({ 'n', 'v' }, '<leader>az', '<cmd>ChatGPTRun add_tests<cr>', 'Add tests')
end

return { setup = setup }
