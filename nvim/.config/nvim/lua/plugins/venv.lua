return {
  "linux-cultist/venv-selector.nvim",
  dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
  opts = {
    name = ".venv",
    auto_refresh = true,
  },
  keys = {
    -- Atajo por si quieres elegir el entorno manualmente con Telescope: Space v
    { "<leader>vs", "<cmd>VenvSelect<cr>", desc = "Seleccionar Entorno Virtual (Python)" },
  },
}
