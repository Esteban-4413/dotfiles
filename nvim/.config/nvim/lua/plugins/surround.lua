return {
  "nvim-mini/mini.surround",
  opts = {
    mappings = {
      add = "sa", -- Añadir surrounding (ej: saiw)
      delete = "sd", -- Eliminar surrounding (ej: sd()
      find = "sf", -- Buscar surrounding
      find_left = "sF", -- Buscar a la izquierda
      highlight = "sh", -- Resaltar surrounding
      replace = "sr", -- Reemplazar surrounding (ej: sr()")
      update_n_lines = "sn", -- Cambiar número de líneas analizadas
    },
  },
}
