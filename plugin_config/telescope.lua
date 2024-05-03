-- [[ Configure Telescope ]]
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ld', builtin.lsp_definitions, {desc = 'LSP: [D]efinition'})
vim.keymap.set('n', '<leader>lD', vim.lsp.buf.declaration, {desc = 'LSP: [D]eclaration'})
vim.keymap.set('n', '<leader>lr', builtin.lsp_references, {desc = 'LSP: [R]eferences'})
vim.keymap.set('n', '<leader>li', builtin.lsp_implementations, {desc = 'LSP: [I]mplementation'})
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, {desc = 'LSP: [H]over Documentation'})
vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, {desc = 'LSP: [S]ignature Documentation'})
