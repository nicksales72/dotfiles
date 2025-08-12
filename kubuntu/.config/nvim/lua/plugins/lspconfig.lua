return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp', 
    },
    config = function()
        local lspconfig = require('lspconfig')
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        local ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
        if ok then
            capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
        end
        local on_attach = function(client, bufnr)
            local buf_map = function(mode, lhs, rhs)
                vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
            end

            buf_map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
            buf_map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
            buf_map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
            buf_map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
            buf_map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
            buf_map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
            buf_map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
        end
        local servers = { 'lua_ls', 'pyright', 'clangd', 'rust_analyzer', 'hls' }

        for _, server in ipairs(servers) do
            lspconfig[server].setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })
        end
        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' },
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true),
                        checkThirdParty = false,
                    },
                },
            },
            on_attach = on_attach,
            capabilities = capabilities,
        })
    end,
}

