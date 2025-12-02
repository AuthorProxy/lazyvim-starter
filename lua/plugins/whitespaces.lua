return {
  "mcauley-penney/visual-whitespace.nvim",
  event = "ModeChanged *:[vV\\22]",
  opts = {},
  config = function(_, opts)
    require("visual-whitespace").setup(opts)
    vim.api.nvim_set_hl(0, "VisualNonText", { fg = "#626880", bg = "#303446" })
  end,
}
