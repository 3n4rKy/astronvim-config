---@type LazySpec
return {
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup {
        style = "deep",
        transparent = false,
        term_colors = false,
        colors = {
          bg0 = "#141b24",
        },
      }
      require("onedark").load() -- include the default astronvim config that calls the setup call
    end,
  },
}
