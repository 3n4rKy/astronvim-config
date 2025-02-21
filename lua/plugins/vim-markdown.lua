---@type LazySpec
return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = function() vim.fn["mkdp#util#install"]() end,
    keys = {
      {
        "<leader>lv",
        ft = "markdown",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown Preview",
      },
      { "<leader>lo", ft = "markdown", "<cmd>ObsidianOpen<cr>", desc = "Obsidian Open" },
      { "<leader>lf", ft = "markdown", "<cmd>ObsidianFollowLink<cr>", desc = "Obsidian Follow Link" },
    },
    config = function() vim.cmd [[do FileType]] end,
  },
  {
    "Kicamon/markdown-table-mode.nvim",
    config = function()
      require("markdown-table-mode").setup {
        filetype = {
          "*.md",
        },
        options = {
          insert = true, -- when typeing "|"
          insert_leave = true, -- when leaveing insert
        },
      }
    end,
  },
}
