---@type LazySpec
return {
  {
    "mikesmithgh/kitty-scrollback.nvim",
    config = function()
      require("kitty-scrollback").setup {
        myconfig = {
          kitty_get_text = {
            ansi = false,
          },
        },
      }
    end,
  },
}
