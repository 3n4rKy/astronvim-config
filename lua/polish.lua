-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }
vim.cmd [[ function OpenMarkdownPreview (url)
      execute "silent ! /usr/bin/firefox --new-window " . a:url
      endfunction
      ]]
vim.cmd [[hi LineNr guifg=#888888]]

vim.g.mkdp_browserfunc = "OpenMarkdownPreview"
