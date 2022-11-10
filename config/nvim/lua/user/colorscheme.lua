local colorscheme = "catppuccin"
vim.g.catppuccin_flavour = "mocha"

-- require('decay').setup({
  -- style = 'decayce',
  -- transparent_background = true,
-- })

require("catppuccin").setup({
  transparent_background = true,
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
