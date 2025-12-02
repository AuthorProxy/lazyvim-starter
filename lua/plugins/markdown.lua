return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    enabled = false,
  },
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    config = function()
      local presets = require("markview.presets")
      require("markview").setup({
        preview = {
          enable = true,
        },
        markdown = {
          headings = presets.headings.slanted,
          horizontal_rules = presets.horizontal_rules.dashed,
          tables = presets.tables.rounded,
        },
      })
      require("markview.extras.checkboxes").setup({
        --- Default checkbox state(used when adding checkboxes).
        ---@type string
        default = "X",

        --- Changes how checkboxes are removed.
        ---@type
        ---| "disable" Disables the checkbox.
        ---| "checkbox" Removes the checkbox.
        ---| "list_item" Removes the list item markers too.
        remove_style = "disable",

        --- Various checkbox states.
        ---
        --- States are in sets to quickly change between them
        --- when there are a lot of states.
        ---@type string[][]
        states = {
          { " ", "/", "X" },
          { "<", ">" },
          { "?", "!", "*" },
          { '"' },
          { "l", "b", "i" },
          { "S", "I" },
          { "p", "c" },
          { "f", "k", "w" },
          { "u", "d" },
        },
      })
    end,
  },
}
