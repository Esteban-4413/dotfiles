return {
  "HakonHarnes/img-clip.nvim",
  event = "VeryLazy",
  opts = {
    default = {
      -- Directorio relativo donde se guardarán las imágenes
      dir_path = "imgs",

      -- Forzar a que use la ruta relativa al archivo que estás editando
      use_absolute_path = false,

      -- Preguntar por el nombre del archivo antes de guardarlo
      prompt_for_file_name = true,

      drag_and_drop = {
        insert_mode = true,
      },
    },
    -- 🚀 AQUÍ ESTÁ EL SECRETO PARA VENCER AL PLUGIN:
    filetypes = {
      markdown = {
        -- Esto anula la plantilla por defecto de Markdown y fuerza el estilo Obsidian
        template = "![[$FILE_NAME]]",
      },
    },
  },
  keys = {
    { "<leader>p", "<cmd>PasteImage<cr>", desc = "Pegar imagen desde el portapapeles" },
  },
}
