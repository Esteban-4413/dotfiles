return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          handlers = {
            ["window/showMessage"] = function(err, result, ctx, config)
              if result and result.message and result.message:find("-32602") then
                return
              end
              -- Para cualquier otro error legítimo, dejamos que actúe normal
              vim.lsp.handlers["window/showMessage"](err, result, ctx, config)
            end,
          },
        },
      },
    },
  },
}
