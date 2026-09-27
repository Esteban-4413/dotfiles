-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.expandtab = true
-- vim.opt.tabstop = 4
-- vim.opt.shiftwidth = 4
-- vim.opt.softtabstop = 4

-- Resaltar la línea actual con fuerza
vim.opt.cursorline = true -- Enciende el resaltado de la línea actual

-- Forzar colores sintácticos más intensos y soporte de 24-bit color
-- vim.opt.termguicolors = true

-- Configuración del Cursor: Parpadeo activado
-- n-v-c: blinkon1000-blinkoff500 -> En modo Normal, Visual y Comando parpadea cada segundo
-- i: blinkon250 -> En modo inserción parpadea más rápido para que sepas que estás escribiendo
vim.opt.guicursor =
  "n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon500-blinkoff500,i-ci-ve:ver25-Cursor-blinkwait250-blinkon250-blinkoff250,r-cr:hor20,o:hor50"

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.md",
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Desactivar diagnósticos e indicaciones visuales SOLO en archivos Markdown (.md)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.b.autoformat = false
    vim.diagnostic.enable(false, { bufnr = 0 })
    vim.opt_local.spell = true
    vim.opt_local.spelllang = "en,es,pt"
  end,
})
