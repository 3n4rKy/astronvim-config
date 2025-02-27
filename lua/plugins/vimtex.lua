---@type LazySpec
return {
  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end,
    config = function()
      -- Plugin-specific configuration here

      -- Add custom key mappings for tex files
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "tex",
        callback = function()
          local opts = { noremap = true, silent = true }
          vim.api.nvim_buf_set_keymap(0, "n", "<leader>lc", ":VimtexCompile<CR>", opts)
          vim.api.nvim_buf_set_keymap(0, "n", "<leader>lv", ":VimtexView<CR>", opts)
        end,
      })
    end,
  },
}
