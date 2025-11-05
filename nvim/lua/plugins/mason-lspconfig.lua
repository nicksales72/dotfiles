return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("mason-lspconfig").setup {
            ensure_installed = {
                "clangd",
                "lua_ls",
                "pyright",
                "rust_analyzer",
                "hls",
                "jdtls",
          },
    }
  end,
}
