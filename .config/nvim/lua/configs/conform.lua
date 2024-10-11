local options = {
  formatters = {
    prettierd = {
      -- cwd means "config working directory"
      require_cwd = true,

      cwd = require("conform.util").root_file {
        ".prettierrc",
        ".prettierrc.json",
        ".prettierrc.yml",
        ".prettierrc.yaml",
        ".prettierrc.json5",
        ".prettierrc.js",
        ".prettierrc.cjs",
        ".prettierrc.mjs",
        ".prettierrc.toml",
        "prettier.config.js",
        "prettier.config.cjs",
        "prettier.config.mjs",
      },
    },
  },
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    javascript = { "biome", "prettierd", stop_after_first = true },
    typescriptreact = { "prettierd", stop_after_first = true },
  },
  -- "prettier" -- slower than prettierd

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
