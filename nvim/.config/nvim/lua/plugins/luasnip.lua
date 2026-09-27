return {
  "L3MON4D3/LuaSnip",
  opts = function(_, opts)
    -- Activamos la magia de la expansión automática
    opts.enable_autosnippets = true
  end,
  config = function(_, opts)
    require("luasnip").setup(opts)
    -- Le decimos que busque una carpeta llamada "snippets" en la raíz de tu config
    require("luasnip.loaders.from_lua").load({ paths = vim.fn.stdpath("config") .. "/snippets" })
  end,
}
