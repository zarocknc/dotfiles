-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "gruvchad",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.term = {
  float = {
    width = 0.9,
    height = 0.8,
    row = 0,
    col = 0,
  },
}

M.lsp = {
  signature = true,
}

M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

M.ui = {
  cmp = {
    format_colors = {
      tailwind = true,
    },
  },
}

-- M.nvdash = {
--   load_on_startup = true,
-- }

return M
