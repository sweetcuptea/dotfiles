return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local colors = {
        L300 = "#F3EED9",
        D300 = "#303030",
        D200 = "#454545",
        D100 = "#505050",
        I300 = "#EA8386",
        I200 = "#EE9B9D",
        I100 = "#F2B5B7",
        V300 = "#CDAEEC",
        V200 = "#DDC7F2",
        V100 = "#E8D9F6",
        C300 = "#98D7C3",
        C200 = "#B9E4D6",
        C100 = "#D0EDE3",
        R300 = "#EBDF83",
        R200 = "#EFE59A",
        R100 = "#F3ECB4",
      }

      local apple_valley = {
        normal = {
          a = { fg = colors.I300, bg = colors.D300 },
          b = { fg = colors.L300, bg = colors.D100 },
          c = { fg = colors.I300, bg = colors.D300 },
          x = { fg = colors.L300, bg = colors.D100 },
          y = { fg = colors.L300, bg = colors.D200 },
        },
        insert = {
          a = { fg = colors.I100, bg = colors.D300 },
          b = { fg = colors.I100, bg = colors.D100 },
          c = { fg = colors.I100, bg = colors.D300 },
          x = { fg = colors.I100, bg = colors.D100 },
          y = { fg = colors.I100, bg = colors.D200 },
        },
        visual = {
          a = { fg = colors.V300, bg = colors.D300 },
          b = { fg = colors.V300, bg = colors.D100 },
          c = { fg = colors.V300, bg = colors.D300 },
          x = { fg = colors.V300, bg = colors.D100 },
          y = { fg = colors.V300, bg = colors.D200 },
        },
        command = {
          a = { fg = colors.C300, bg = colors.D300 },
          b = { fg = colors.C300, bg = colors.D100 },
          c = { fg = colors.C300, bg = colors.D300 },
          x = { fg = colors.C300, bg = colors.D100 },
          y = { fg = colors.C300, bg = colors.D200 },
        },
        replace = {
          a = { fg = colors.R300, bg = colors.D300 },
          b = { fg = colors.R300, bg = colors.D100 },
          c = { fg = colors.R300, bg = colors.D300 },
          x = { fg = colors.R300, bg = colors.D100 },
          y = { fg = colors.R300, bg = colors.D200 },
        },
        inactive = {},
      }

      local symbol = "       "

      local filename = {
        "filename",
        color = { fg = colors.mauve },
        file_status = true, -- Displays file status (readonly status, modified status)
        newfile_status = true, -- Display new file status (new file means no write after created)
        path = 0, -- 0: Just the filename
        -- 1: Relative path
        -- 2: Absolute path
        -- 3: Absolute path, with tilde as the home directory
        -- 4: Filename and parent dir, with tilde as the home directory

        shorting_target = 40, -- Shortens path to leave 40 spaces in the window
        -- for other components. (terrible name, any suggestions?)
        symbols = {
          modified = "󰷥", -- Text to show when the file is modified.
          readonly = "", -- Text to show when the file is non-modifiable or readonly.
          unnamed = " - No Name", -- Text to show for unnamed buffers.
          newfile = " - New File",
        },
        separator = { left = "", right = " " },
        left_padding = 4,
      }

      local diff = {
        "diff",
        -- color = { fg = colors.mauve },
        colored = true, -- Displays a colored diff status if set to true
        -- diff_color = {
        --   -- Same color values as the general color option can be used here.
        --   added = "LuaLineDiffAdd", -- Changes the diff's added color
        --   modified = "LuaLineDiffChange", -- Changes the diff's modified color
        --   removed = "LuaLineDiffDelete", -- Changes the diff's removed color you
        -- },
        symbols = { added = "+", modified = "~", removed = "-" }, -- Changes the symbols used by the diff.
        separator = { right = " " },
        color = { fg = colors.L300, bg = colors.D300 },
      }

      local diagnostics = {
        "diagnostics",
        separator = { left = "", right = " " },
        left_margin = 10,
        color = { bg = colors.D200 },
        symbols = {},
      }

      local branch = {
        "branch",
        separator = { left = "", right = " " },
        left_margin = 10,
      }

      local mode = {
        "mode",
        fmt = function(str)
          return " 󰮯 󰊠 󰊠 " .. str:sub(1, 1)
          -- return "  " .. str:sub(1, 1)
        end,
        separator = { right = " " },
      }

      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = apple_valley,
          component_separators = { left = " ", right = " " },
          section_separators = { left = "", right = "" },
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          },
        },
        sections = {
          lualine_a = { mode },
          lualine_b = {
            diagnostics,
            branch,
            diff,
            filename,
          },
          lualine_c = { { "%=" } },
          lualine_x = {
            { "encoding", separator = { left = "" } },
            { "fileformat", separator = { left = "" } },
          },
          lualine_y = {
            { "progress", separator = { left = " " } },
            { "showcmd" },
          },
          lualine_z = {
            {
              "location",
              separator = { left = "" },
            },
          },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {},
      })
    end,
  },
}
