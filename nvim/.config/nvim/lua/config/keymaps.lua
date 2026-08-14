-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Atajo para limpiar texto roto de PDFs en portugués
vim.keymap.set("n", "<leader>cx", function()
  vim.cmd([[%s/´a/á/ge]])
  vim.cmd([[%s/¸c/ç/ge]])
  vim.cmd([[%s/˜a/ã/ge]])
  vim.cmd([[%s/˜o/õ/ge]])
  vim.cmd([[%s/´ı/ní/ge]])
  vim.cmd([[%s/´e/é/ge]])
  vim.cmd([[%s/´u/ú/ge]])
  vim.cmd([[%s/`a/à/ge]])
  vim.cmd([[%s/àBin/ABin/ge]])
  print("Texto de la ficha limpiado con éxito")
end, { desc = "Limpiar texto roto de PDF" })

-- MINI SURROUNDINGS
-- Remapear mini.surround para usar 'sa' en lugar de 'gsa'
vim.g.minisurround_config = {
  mappings = {
    add = "sa", -- Añadir surrounding (ej: saiw)
    delete = "sd", -- Eliminar surrounding (ej: sd()
    find = "sf", -- Buscar surrounding
    find_left = "sF", -- Buscar a la izquierda
    highlight = "sh", -- Resaltar surrounding
    replace = "sr", -- Reemplazar surrounding (ej: sr()")
    update_n_lines = "sn", -- Cambiar número de líneas analizadas
  },
}

-- FLASH
-- -- OPCIÓN A: Usando 'gs' (Muy fluida)
-- vim.keymap.set({ "n", "x", "o" }, "gs", function()
--   require("flash").jump()
-- end, { desc = "Flash Jump" })
-- vim.keymap.set({ "n", "x", "o" }, "gS", function()
--   require("flash").treesitter()
-- end, { desc = "Flash Treesitter" })

-- OPCIÓN B: Usando 'zk' (Si prefieres dejar 'gs' libre)
vim.keymap.set({ "n", "x", "o" }, "zk", function()
  require("flash").jump()
end, { desc = "Flash Jump" })
vim.keymap.set({ "n", "x", "o" }, "zK", function()
  require("flash").treesitter()
end, { desc = "Flash Treesitter" })

-- ====================================================================
-- MANIM
-- ====================================================================
--
-- Mapeo directo de Manim sin autocomandos
-- Mapeo directo de Manim compatible con subcarpetas
vim.keymap.set("n", "<leader>mr", function()
  if vim.bo.filetype ~= "python" then
    print("Este archivo no es de Python")
    return
  end

  vim.cmd("w")
  local cword = vim.fn.expand("<cword>")
  local filename = vim.fn.expand("%:t") -- Solo el nombre del archivo (ej: hello.py)
  local filedir = vim.fn.expand("%:p:h") -- La carpeta exacta donde vive el archivo

  print("Renderizando escena con Manim: " .. cword .. "...")

  vim.fn.jobstart({ "uv", "run", "manim", "-pql", filename, cword }, {
    cwd = filedir,
    on_exit = function(_, exit_code)
      if exit_code == 0 then
        print("¡Render de Manim completado con éxito!")
      else
        print("Error al renderizar la escena de Manim.")
      end
    end,
  })
end, { desc = "Renderizar Escena de Manim" })
