return {
  { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "bash",
        "cpp",
        "css",
        "dart",
        "gitignore",
        "go",
        "graphql",
        "html",
        "http",
        "java",
        "javascript",
        "kotlin",
        "lua",
        "php",
        "python",
        "rust",
        "ruby",
        "sql",
        "scss",
        "svelte",
        "tsx",
        "typescript",
        "vim",
        "vue",
        "yaml",
      },

      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },

      playground = {
        enable = true,
        disable = {},
        updatetime = 25,
        persist_queries = false,
      },
    },

    -- laravel config
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      ---@class parser_config
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      parser_config.blade = {
        install_info = {
          url = "https://github.com/EmranMR/tree-sitter-blade",
          files = { "src/parser.c" },
          branch = "main",
        },
        filetype = "blade",
      }

      vim.filetype.add({
        pattern = {
          [".*%.blade%.php"] = "blade",
        },
      })
    end,
  },
}
