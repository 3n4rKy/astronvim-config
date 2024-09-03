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
          paste_window = {
            -- string? register used during yanks to paste window, see :h registers
            yank_register = "*",
            -- boolean? If true, the yank_register copies content to the paste window. If false, disable yank to paste window
            yank_register_enabled = true,
          },
        },
      }
    end,
  },
}
