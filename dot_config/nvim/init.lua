vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.swapfile = false
vim.o.wrap = false
vim.o.winborder = 'rounded'
vim.o.cursorline = true
vim.o.cursorlineopt = 'number'

vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'

vim.api.nvim_create_autocmd('FocusLost', { pattern = '*', command = 'silent! wa' })
vim.api.nvim_create_autocmd('InsertLeavePre', { pattern = '*', command = 'silent! wa'})

-- keybinds
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>n', ':tabnew<CR>')
vim.keymap.set('n', '<leader>v', ':tabprev<CR>')
vim.keymap.set('n', '<leader>b', ':tabnext<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>f', ':Pick files<CR>')
vim.keymap.set('n', '<leader>h', ':Pick help <CR>')
vim.keymap.set('n', '<leader>o', ':update<CR> :so<CR>')
vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>qq', ':q<CR>')
vim.keymap.set('n', '<leader>qf', ':q!<CR>')
vim.keymap.set('n', '<leader>qw', ':wq!<CR>')

-- add plugins
vim.pack.add({
  'https://github.com/nvim-mini/mini.pairs',
  'https://github.com/stevearc/oil.nvim',
  'https://github.com/saghen/blink.cmp',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/vague2k/vague.nvim',
  'https://github.com/luukvbaal/statuscol.nvim',
  'https://github.com/nvim-mini/mini.pick',
  'https://github.com/plax-00/endscroll.nvim',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/xiyaowong/transparent.nvim'
})

-- setup plugins
require('mini.pairs').setup()
require('mason').setup()
require('oil').setup()
require('mini.pick').setup()

require("statuscol").setup({
  relculright = true,
})

require('blink.cmp').setup({
  keymap = { preset = 'super-tab' },
  fuzzy = { implementation = 'lua' }
})

require('endscroll').setup {}

require('nvim-treesitter.configs').setup({
  ensure_installed = { 'zig', 'lua', 'c', 'rust', 'vento', 'javascript', 'css', 'html' },
  highlight = { enable = true }
})

vim.cmd('colorscheme vague')

-- setup lsp
vim.lsp.enable({ 'lua_ls', 'zls', 'clangd', 'rust-analyzer', 'typescript-language-server' })

vim.lsp.config('lua_ls',
  {
    settings = {
      Lua = {
        workspace = {
          library = vim.api.nvim_get_runtime_file('', true),
        }
      }
    }
  })

-- statusline
local statusline = {
  ' %t',
  '%r',
  ' / ',
  '%m',
  '%=',
  ' / %{&filetype}',
  ' / %2p%%',
  ' / col %-2c '
}

vim.o.statusline = table.concat(statusline, '')

-- misc
vim.cmd(':hi statusline guibg=NONE')
vim.cmd(':hi CursorLineNr guifg=#aeaed1')
vim.cmd('setlocal scrolloff=7')
