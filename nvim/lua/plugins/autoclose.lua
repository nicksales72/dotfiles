return {
  "m4xshen/autoclose.nvim",
  opts = {
    keys = {
      ["$"] = {
        escape = true,
        close = true,
        pair = "$$",
        enabled_filetypes = { "tex" },
      },
      ["'"] = {
        disabled_filetypes = { "tex" },
      },
    },
  },
}

