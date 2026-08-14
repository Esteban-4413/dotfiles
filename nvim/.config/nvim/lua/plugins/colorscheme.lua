return {
  -- 1. Instalamos Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
    },
    priority = 1000,
  },

  -- 2. Instalamos el detector del sistema operativo
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.api.nvim_set_option_value("background", "dark", {})
        vim.cmd("colorscheme catppuccin-mocha") -- El tema oscuro para la noche
      end,
      set_light_mode = function()
        vim.api.nvim_set_option_value("background", "light", {})
        vim.cmd("colorscheme catppuccin-latte") -- El tema claro para el día
      end,
    },
  },
}
