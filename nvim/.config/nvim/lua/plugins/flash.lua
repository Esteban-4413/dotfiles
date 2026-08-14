return {
  "folke/flash.nvim",
  -- Le añadimos opts vacío para que LazyVim inicialice el plugin correctamente antes de clavar las keys
  opts = {},
  keys = {
    -- 1. Desactivar por completo los atajos nativos en 's' y 'S'
    { "s", mode = { "n", "x", "o" }, false },
    { "S", mode = { "n", "x", "o" }, false },

    -- 2. Asignar tus nuevos atajos cómodos
    {
      "zk",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash Jump",
    },
    {
      "zK",
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
  },
}
