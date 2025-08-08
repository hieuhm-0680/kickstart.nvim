-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
--
--
-- Set tab width to 4 spaces

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- Use spaces instead of tabs
vim.opt.softtabstop = 4
vim.opt.expandtab = true
-- Automatically indent new lines
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Keymaps for copying paths to clipboard
vim.api.nvim_set_keymap('n', '<C-A-a>', ':let @+ = expand("%:p")<CR>', { noremap = true, silent = true }) -- Absolute path to clipboard
vim.api.nvim_set_keymap('n', '<C-A-r>', ':let @+ = expand("%")<CR>', { noremap = true, silent = true }) -- Relative path to clipboard
vim.api.nvim_set_keymap('n', '<C-A-n>', ':let @+ = expand("%:t")<CR>', { noremap = true, silent = true }) -- Filename to clipboard

-- Copy absolute path of the folder from Neotree to clipboard
vim.api.nvim_set_keymap('n', '<C-S-A-a>', [[:lua vim.fn.setreg('+', vim.fn.expand('%:p:h'))<CR>]], { noremap = true, silent = true })

-- Copy relative path of the folder from Neotree to clipboard
vim.api.nvim_set_keymap(
  'n',
  '<C-S-A-r>',
  [[:lua vim.fn.setreg('+', vim.fn.expand('%:p:h'):sub(#vim.fn.expand('%:p:h')) + 1))<CR>]],
  { noremap = true, silent = true }
)

-- Copy folder name from Neotree to clipboard
vim.api.nvim_set_keymap('n', '<C-S-A-n>', [[:lua vim.fn.setreg('+', vim.fn.expand('%:t'))<CR>]], { noremap = true, silent = true })

-- See the kickstart.nvim README for more information
return {
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
      'TmuxNavigatorProcessList',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },
}
