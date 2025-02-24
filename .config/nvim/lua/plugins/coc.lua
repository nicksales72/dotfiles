return {
  {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
      vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", { silent = true })
      vim.api.nvim_set_keymap("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
      vim.api.nvim_set_keymap("n", "gi", "<Plug>(coc-implementation)", { silent = true })
      vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", { silent = true })
      vim.api.nvim_set_keymap("n", "K", ":call CocActionAsync('doHover')<CR>", { silent = true })

      vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", { silent = true })

      vim.cmd [[
        let g:coc_global_extensions = ['coc-pyright', 'coc-clangd', 'coc-texlab']
      ]]
    end,
  }
}

