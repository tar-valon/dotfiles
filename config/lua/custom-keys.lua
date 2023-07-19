-- fetch keymap
local map = vim.api.nvim_set_keymap

-- map the key z to run the command :NvimTreeToggle
map('n', 'z', [[:NvimTreeToggle<CR>]], {})
