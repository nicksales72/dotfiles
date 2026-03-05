require("config.lazy")
vim.lsp.enable('pyright')

vim.cmd("colorscheme catppuccin")
vim.wo.relativenumber = true
vim.opt.clipboard = "unnamedplus"   
vim.opt.spell = true
vim.opt.spelllang = "en_ca"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
