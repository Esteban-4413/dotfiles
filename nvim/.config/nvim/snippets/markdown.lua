local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- 1. Entornos Matemáticos Rápidos (Autosnippets)
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

  s({ trig = "all", snippetType = "autosnippet" }, {
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

  s({ trig = ":res", snippetType = "autosnippet" }, {
    t("> [!check]- **Resolução**"),
    t({ "", "> " }),
    i(1, "Demonstração aqui..."),
  }),

  -- 5. Linguagens e Alfabetos (Lógica CC)
  s({ trig = "eps", snippetType = "autosnippet" }, {
    t("\\epsilon"),
  }),

  -- Fecho de Kleene (ex: escreves A seguido de ast -> A^*)
  s({ trig = "ast", snippetType = "autosnippet" }, {
    t("^*"),
  }),

  -- Comprimento de uma palavra
  s({ trig = "len", snippetType = "autosnippet" }, {
    t("|"),
    i(1, "x"),
    t("|"),
    i(0),
  }),
  -- 6. Construtor de Conjuntos
  s({ trig = ":set", snippetType = "autosnippet" }, {
    t("\\{ "),
    i(1, "x \\in X"),
    t(" \\mid "),
    i(2, "condição"),
    t(" \\}"),
    i(0),
  }),

  -- 7. Template de Indução Estrutural (Snippet normal, usa Tab para expandir)
  s(":inducao", {
    t("> [!note]- **Demonstração por Indução Estrutural**"),
    t({ "", "> Seja $P(" }),
    i(1, "e"),
    t(")$ a condição: "),
    i(2, "escreve a propriedade aqui"),
    t("."),
    t({ "", "> ", "> **1. Base:**" }),
    t({ "", "> Para $" }),
    i(3, "b \\in B"),
    t("$, temos que "),
    i(4, "prova da base..."),
    t({ "", "> ", "> **2. Passo Indutivo:**" }),
    t({
      "",
      "> Supondo que $P$ é válida para as hipóteses de indução (H.I.), ao aplicar a operação da regra matemática, obtemos:",
    }),
    t({ "", "> " }),
    i(0),
  }),

  -- 8. Símbolos de Teoria de Conjuntos
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

  -- 9. Conjuntos de Números
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
