local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s({ trig = "mk", snippetType = "autosnippet" }, {
    t("$"),
    i(1),
    t("$"),
    i(0),
  }),

  s({ trig = "dm", snippetType = "autosnippet" }, {
    t({ "$$", "" }),
    i(1),
    t({ "", "$$" }),
    i(0),
  }),

  s({ trig = "=>", snippetType = "autosnippet" }, {
    t("\\implies "),
  }),

  s({ trig = ":forall", snippetType = "autosnippet" }, {
    t("\\forall "),
  }),

  s({ trig = ":ex", snippetType = "autosnippet" }, {
    t("\\exists "),
  }),

  s({ trig = "ff", snippetType = "autosnippet" }, {
    t("\\frac{"),
    i(1),
    t("}{"),
    i(2),
    t("}"),
    i(0),
  }),

  s({ trig = ":==", snippetType = "autosnippet" }, {
    t("\\equiv "),
  }),

  s({ trig = "eps", snippetType = "autosnippet" }, {
    t("\\epsilon"),
  }),

  -- s({ trig = "ast", snippetType = "autosnippet" }, {
  --   t("^*"),
  -- }),

  s({ trig = ":in", snippetType = "autosnippet" }, {
    t("\\in "),
  }),

  s({ trig = ":nin", snippetType = "autosnippet" }, {
    t("\\notin "),
  }),

  s({ trig = ":sub", snippetType = "autosnippet" }, {
    t("\\subseteq "),
  }),

  s({ trig = ":cup", snippetType = "autosnippet" }, {
    t("\\cup "),
  }),

  s({ trig = ":cap", snippetType = "autosnippet" }, {
    t("\\cap "),
  }),

  s({ trig = ":setm", snippetType = "autosnippet" }, {
    t("\\setminus "),
  }),

  s({ trig = "NN", snippetType = "autosnippet" }, {
    t("\\mathbb{N}"),
  }),

  s({ trig = "ZZ", snippetType = "autosnippet" }, {
    t("\\mathbb{Z}"),
  }),

  s({ trig = "QQ", snippetType = "autosnippet" }, {
    t("\\mathbb{Q}"),
  }),

  s({ trig = "RR", snippetType = "autosnippet" }, {
    t("\\mathbb{R}"),
  }),

  s({ trig = "CC", snippetType = "autosnippet" }, {
    t("\\mathbb{C}"),
  }),

  s({ trig = "0set", snippetType = "autosnippet" }, {
    t("\\emptyset"),
  }),

  s({ trig = ":!=", snippetType = "autosnippet" }, {
    t("\\neq "),
  }),

  s({ trig = ":ex1", snippetType = "autosnippet" }, {
    t("\\exists! "),
  }),

  s({ trig = ":xx", snippetType = "autosnippet" }, {
    t("\\times "),
  }),

  s({ trig = ":cir", snippetType = "autosnippet" }, {
    t("\\circ "),
  }),

  s({ trig = ":pow", snippetType = "autosnippet" }, {
    t("\\mathcal{P}("),
    i(1, "A"),
    t(")"),
    i(0),
  }),
}
