vim.g.mapleader = " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
vim.cmd 'colorscheme kanagawa' 
lspconfig = require("lspconfig")
lspconfig.pylsp.setup {
on_attach = custom_attach,
settings = {
    pylsp = {
    plugins = {
        -- formatter options
        black = { enabled = true },
        autopep8 = { enabled = false },
        yapf = { enabled = false },
        -- linter options
        pylint = { enabled = true, executable = "pylint" },
        pyflakes = { enabled = false },
        pycodestyle = { enabled = false },
        -- type checker
        pylsp_mypy = { enabled = true },
        -- auto-completion options
        jedi_completion = { fuzzy = true },
        -- import sorting
        pyls_isort = { enabled = true },
    },
    },
},
flags = {
    debounce_text_changes = 200,
},
capabilities = capabilities,
}
vim.keymap.set('n', 'j', 'h')
vim.keymap.set('n', 'k', 'j')
vim.keymap.set('n', 'l', 'k')
vim.keymap.set('n', ';', 'l')
vim.keymap.set('n', '<Leader>j', '<C-w>h')
vim.keymap.set('n', '<Leader>k', '<C-w>j')
vim.keymap.set('n', '<Leader>l', '<C-w>k')
vim.keymap.set('n', '<Leader>;', '<C-w>l')
vim.keymap.set('n', '<Leader><Space>', '<C-^>')
vim.keymap.set('n', '<Leader>-', ':split<CR>')
vim.keymap.set('n', '<Leader>%', ':vsplit<CR>')
vim.keymap.set('n', '<Leader>c', ':noh')
vim.keymap.set('n', '<Leader>d', ':bd<CR>')
vim.keymap.set('n', '<Leader>n', ':bn<CR>')
vim.keymap.set('n', '<Leader>p', ':bp<CR>')
vim.keymap.set('n', '<Leader>w', 'wa<CR>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<Leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<Leader>fb', ':Telescope buffers<CR>')
vim.keymap.set('n', '<Leader>gf', ':Telescope git_files<CR>')
vim.keymap.set('n', 'gs', ':Git<CR>')
vim.keymap.set('n', 'gp', ':Git push -f origin HEAD')
