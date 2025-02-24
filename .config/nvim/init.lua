require("config.lazy")

vim.cmd('syntax on')
vim.opt.background = 'dark'

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true

vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.ruler = true

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('i', '(', '()<Left>', opts)
vim.api.nvim_set_keymap('i', '{', '{}<Left>', opts)
vim.api.nvim_set_keymap('i', '[', '[]<Left>', opts)
vim.api.nvim_set_keymap('i', '"', '""<Left>', opts)

vim.api.nvim_create_autocmd("FileType", {
  pattern = "tex",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'i', '$', '$$<Left>', { noremap = true, silent = true })
  end,
})

