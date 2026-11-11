local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s({ trig = "mk", snippetType = "autosnippet" }, {
    t("$ "),
    i(1),
    t(" $"),
    i(0),
  }),
  s({ trig = "dm", snippetType = "autosnippet" }, {
    t({ "$", "" }),
    i(1),
    t({ "", "$" }),
    i(0),
  }),
  s("neq", t("$eq.not$")),
  s("geq", t("$>=$")),
  s("leq", t("$<=$")),
  s("def", t("$:=$")),
  s("iff", t("$<==>$")),
  s("cong", t("$math.eq.triple$")),
}
