-- Mover la línea actual hacia arriba
vim.api.nvim_set_keymap("n", "<C-Up>", ":m-2<CR>", { noremap = true, silent = true })

-- Mover la línea actual hacia abajo
vim.api.nvim_set_keymap("n", "<C-Down>", ":m+1<CR>", { noremap = true, silent = true })

-- Abrir el directorio padre usando el plugin Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Desplazar media página hacia abajo y centrar el cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Desplazar media página hacia arriba y centrar el cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- En modo inserción, eliminar desde el cursor hasta el final de la palabra sin salir del modo inserción
vim.keymap.set("i", "<C-b>", "<C-o>de")

-- Asignar Ctrl+c para salir al modo normal desde cualquier modo (insertar, normal, visual)
vim.keymap.set({ "i", "n", "v" }, "<C-c>", [[<C-\><C-n>]])

-- Cerrar todos los buffers excepto el buffer actual
vim.keymap.set(
  "n",
  "<leader>bq",
  '<Esc>:%bdelete|edit #|normal`"<Return>',
  { desc = "Delete other buffers but the current one" }
)

-- Desactivar Alt+j y Alt+k en modo inserción
vim.api.nvim_set_keymap("i", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-k>", "<Nop>", { noremap = true, silent = true })

-- Desactivar Alt+j y Alt+k en modo normal
vim.api.nvim_set_keymap("n", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<Nop>", { noremap = true, silent = true })

-- Desactivar Alt+j, Alt+k, J y K en modo visual por bloques
vim.api.nvim_set_keymap("x", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-k>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "K", "<Nop>", { noremap = true, silent = true })

-- Guardar el archivo actual usando Ctrl+s con una función personalizada
vim.api.nvim_set_keymap("n", "<C-s>", ":lua SaveFile()<CR>", { noremap = true, silent = true })

-- Función personalizada para guardar el archivo con notificaciones
function SaveFile()
  -- Check if a buffer with a file is open
  if vim.fn.empty(vim.fn.expand("%:t")) == 1 then
    vim.notify("No file to save", vim.log.levels.WARN)
    return
  end

  local filename = vim.fn.expand("%:t") -- Get only the filename
  local success, err = pcall(function()
    vim.cmd("silent! write") -- Try to save the file without showing the default message
  end)

  if success then
    vim.notify(filename .. " Saved!") -- Show only the custom message if successful
  else
    vim.notify("Error: " .. err, vim.log.levels.ERROR) -- Show the error message if it fails
  end
end

