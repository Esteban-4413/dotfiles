return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  opts = {
    extra_groups = {
      "Normal",
      "NormalNC",
      "NormalFloat",
      "FloatBorder",
      "SignColumn",
      "StatusLine",
      "StatusLineNC",
      "LineNr",
      "Folded",
      "EndOfBuffer",
      "NeoTreeNormal",
      "NeoTreeNormalNC",
      "BufferLineFill",
      "BufferLineBackground",
    },
  },
  config = function(_, opts)
    require("transparent").setup(opts)
    require("transparent").clear_prefix("BufferLine")
    require("transparent").clear_prefix("NeoTree")
  end,
}
