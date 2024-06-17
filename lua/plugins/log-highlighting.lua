---@type LazySpec
return {
  {
    "fei6409/log-highlight.nvim",
    config = function()
      require("log-highlight").setup {
        extension = { "log", "csv" },
      }
    end,
  },
}
