return {
  -- Plugin: nvim-snippets
  "garymjr/nvim-snippets",

  event = "VeryLazy", -- Carga el plugin en el evento 'VeryLazy'

  init = function()
    -- Configuración inicial
    vim.o.timeout = true
    vim.o.timeoutlen = 300 -- Tiempo de espera de 300 milisegundos
  end,

  keys = {
    {
      "<Tab>", -- Expandir snippet
      function()
        if vim.snippet.active({ direction = 1 }) then
          vim.schedule(function()
            vim.snippet.jump(1)
          end)
        end
        return "<Tab>"
      end,
      expr = true,
      silent = true,
      mode = "i",
    },
    {
      "<S-Tab>", -- Retroceder en el snippet
      function()
        if vim.snippet.active({ direction = -1 }) then
          vim.schedule(function()
            vim.snippet.jump(-1)
          end)
        end
        return "<S-Tab>"
      end,
      expr = true,
      silent = true,
      mode = { "i", "s" },
    },
  },
}
