return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls","clangd", "pyright", "gopls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Neovim 0.11+ way (no require("lspconfig"))
      vim.lsp.config("lua_ls", {})
      vim.lsp.config("ts_ls", {})
      vim.lsp.config("clangd", {})
      vim.lsp.config("pyright", {})
      vim.lsp.config("gopls", {})

      vim.lsp.enable({ "lua_ls","ts_ls", "clangd", "pyright", "gopls"})

      vim.keymap.set('n','K', vim.lsp.buf.hover, {})
      vim.keymap.set('n','gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end,
  },
}

