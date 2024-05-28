-- [[ BASIC KEYMAPS ]]

-- File saving and quitting maps
vim.keymap.set('n', '<leader>fs', "<Esc>:w<CR>", {desc = '[F]ile [S]ave'});
vim.keymap.set('n', '<leader>fq', "<Esc>:q<CR>", {desc = '[F]ile [Q]uit'});
vim.keymap.set('n', '<leader>fr', "<Esc>:!./run.sh<CR>", {desc = '[F]ile [R]un'});
vim.keymap.set('n', '<leader>fb', "<Esc>:b#<CR>", {desc = '[F]ile [B]ack'})
vim.keymap.set({ 'n', 'v', 'i'}, '<C-s>', '<Esc>:w<CR>', {desc = 'SAVE'});
vim.keymap.set({'n', 'v'}, '<leader>q', "<Esc>:q<CR>", {desc = 'QUIT'});

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>dl', "<Esc>:Trouble<CR>", { desc = 'Open diagnostics list' })

-- Searching maps
vim.keymap.set('n', '<leader>/', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in curr buffer' })

-- Other keymaps that'll go unnoticed
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true });
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true });
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true });
