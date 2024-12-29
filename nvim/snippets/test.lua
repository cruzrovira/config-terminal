local ls = require("luasnip") -- Importa LuaSnip
local s = ls.snippet
local t = ls.text_node

-- Define los snippets
ls.add_snippets("lua", { -- Aquí indicamos que es para archivos Lua
  s("hello", {
    t("print('Hello, world!')"),
  }),
})