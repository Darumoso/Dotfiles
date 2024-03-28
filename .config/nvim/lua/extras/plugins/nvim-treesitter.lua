return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
   -- dependencies = {
--    "windwp/nvim-ts-autotag",
    --},

    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- ensure these language parsers are installed
        ensure_installed = {
          "bash",
          "lua",
          "gitignore",
          "javascript",
          "rust",
        },
        --autotag = {
        --    enable = true,
        --},
      })
    end,
  },
}
