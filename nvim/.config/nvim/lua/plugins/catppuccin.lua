return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = true, -- disables setting the background color.
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" }, -- Change the style of comments
          conditionals = { "italic" },
          loops = {},
          functions = { "bold" },
          keywords = { "bold" },
          strings = {},
          variables = { "bold" },
          numbers = {},
          booleans = { "italic" },
          properties = {},
          types = { "bold" },
          operators = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        -- colors
        color_overrides = {
          mocha = {
            rosewater = "#CEEEEB", -- "links" : teal-100
            flamingo = "#B1DCC1", -- "bracket" : green-200
            pink = "#EE9C9E", -- "icon, ui element, html element" : peach-400
            mauve = "#F1ACAE", -- "visual mode" : peach-300
            red = "#F26A6A", -- "warning code, syntax suggestion 1" : red-500
            peach = "#F69B9B", -- "boolean , methods 2, command-mode" : red-300
            maroon = "#EAB7F2", -- "parameter , notification text" : funchsia-300
            yellow = "#F1ACAE", -- "import files , methods 1" : peach-300
            green = "#FFEDB4", -- "string, insert mode" : yellow-200
            teal = "#B9E4D6", -- "attribute , command-mode" : emerald-200
            sky = "#ACDCF1", -- : sky-300
            sapphire = "#D1E1B8", -- "description from syntax highlighting" : lime-200
            blue = "#EA8386", -- "status bar color , function name" : peach-500
            lavender = "#f3eed9", -- "key value pairs" : peach-300
            text = "#f3eed9", -- "main text, variable" : custom-color
            subtext1 = "#e0e0e0",
            subtext0 = "#c6c6c6",
            overlay2 = "#a8a8a8",
            overlay1 = "#8d8d8d",
            overlay0 = "#6f6f6f",
            surface2 = "#525252",
            surface1 = "#404040", -- "line number, hightlight when selecting, visual block" : dark-400
            surface0 = "#262626",
            base = "#282828", -- main background
            mantle = "#272727", -- neotree background
            crust = "#272727",
          },
        },
        -- overrides colors
        custom_highlights = function(color)
          return {
            -- [ VIM ]
            -- Visual = { bg = color.mauve, fg = color.base }, -- visual style selction
            -- YankHighlight = { bg = color.peach }, -- yanked text ( doesn't work )

            -- [ GENERAL SYNTAX HIGHLIGHTING ]
            String = { fg = color.green }, -- js : ( string )
            Boolean = { fg = color.flamingo, italic = true, bold = true }, -- boolean
            Comment = { fg = color.overlay1, italic = true }, -- comment
            Number = { fg = color.sky }, -- numbers
            Function = { fg = color.blue }, -- js : ( funtion )
            PreProc = { fg = color.maroon }, -- c : ( #include )
            PreCondit = { fg = color.lavender }, -- c : ( #ifdef )
            Include = { fg = color.lavender }, -- c : ( #include ) | js : ( import, useState )
            Define = { fg = color.flamingo }, -- c : ( #define )
            Conditional = { fg = color.maroon }, -- js : ( if else, switch case, etc )
            Keyword = { fg = color.flamingo }, -- js : ( let, const )
            Repeat = { fg = color.maroon, italic = true }, -- js : ( for, while, do)
            Typedef = { fg = color.sky }, -- c : ( typedef ) | ts : ( type )
            Exception = { fg = "#F99BC9" }, --  js : ( try, catch, finally ) | pink-400
            Label = { fg = color.mauve }, -- js : ( outerLoop )
            Operator = { fg = color.blue }, -- js : ( operators )
            Delimiter = { fg = color.lavender }, -- js : ( commas, semicolons )
            Identifier = { fg = color.lavender }, -- js : console | telescope ( > ) | doesn't work on js
            Constant = { fg = color.maroon }, -- string literals | html : ( doctype html )
            -- Ignore = {}, -- js : ( disabeled code )
            -- Character = {}, -- any character constant | ( \n ) | doesn't work
            -- Special = {}, -- js : built-in special object | ( \n, PI ) | doesn't work
            -- SpecialChar = {}, -- js : special characters | ( \\, \u00A9 ) | doesn't work
            -- Title = {}, -- js : comment that act as header | doesn't work
            -- Structure = {}, -- js : ( class, constructor ) | doesn't work
            -- Statement = {}, -- js : ( return ) | dosen't work
            -- Error = {}, -- error messages | doesn't work
            -- Tag = {}, -- html tag | doesn't work
            -- StorageClass = {}, -- don't have no idea
            -- Variable = {}, -- doesn't work
            -- Type = {}, -- ts : type highlight | ( void, boolean, string, etc ) | doesn't work

            -- [ NEOTEST ]
            NeotestPassed = {},
            NeotestFailed = {},
            NeotestRunning = {},
            NeotestSkipped = {},
            NeotestFile = {},
            NeotestNamespace = {},
            NeotestDir = {},
            NeotestFocused = {},
            NeotestAdapterName = {},
            NeotestIndent = {},
            NeotestExpandMarker = {},
            NeotestWinSelect = {},
            NeotestTest = {},

            -- [ UI AND EDITOR COMPONENTS ]
            TabLineSel = { bg = color.blue }, -- selected active tab
            TabLine = { fg = color.overlay0 }, -- tabline of inactive tabs
            TabLineFill = { bg = color.base }, -- tabline background of inactive tabs
            IblIndent = { fg = color.surface1 }, -- vertical indentation level of code
            IblScope = { fg = color.flamingo }, -- vertical indentation level of code | active
            VerSplit = { fg = color.overlay1 }, -- vertical split window border
            WinSeparator = {}, -- separates window
            EndOfBuffer = { fg = color.green }, -- tildes (~)
            MatchParen = { fg = color.blue }, -- matches prentheses
            -- TabLineFill = {}, -- doesn't work
            -- CmpBorder = {}, -- border auto-completion menu pops up | doesn't work
            -- FidgetTask = {}, -- status task like lsp when they're running | doesn't work
            -- FingetTitle = {}, -- tittle text within each finget window | doesn't work
            -- WhichKeyFloat = {}, -- shortcut menu appearance | doesn't work

            -- [ LINE AND CURSOR MANAGEMENT ]
            CursorLine = { bg = "#242424" },
            CursorLineNr = { fg = color.blue }, -- line number | active number
            LineNr = { fg = color.overlay0 }, -- line number
            -- Floded = {}, -- doesn't work

            -- [FLOATING WINDOW]
            Pmenu = { bg = color.surface2 }, -- auto-completion pop up menu
            PmenuSel = { bg = "#323232" }, -- auto-completion pop up menu selected
            PmenuSbar = { bg = color.surface2 }, -- scroll bar pop up menu
            PmenuThumb = { bg = color.blue }, -- scroll bar pop up menu thumb
            NormalFloat = { bg = "#242424" }, -- special pop up window information | including mason menu
            ErrorMsg = { fg = color.text }, -- floating error messages
            -- StatusLine = {}, -- spacing on statusline | useless
            -- StatusLineNC = {}, -- don't have no idea
            -- FloatBorder = {}, -- content inside floating window | doesn't work

            -- [ TELESCOPE ]
            TelescopePromptTitle = { fg = color.lavender }, -- telescope command : title
            TelescopePromptCounter = { fg = color.lavender }, -- telescope command : counter command
            TelescopePromptBorder = { fg = color.green }, -- telescope command : border
            TelescopeResultsTitle = { fg = color.lavender }, -- telescope results : title
            TelescopeResultsBorder = { fg = color.blue }, -- telescope result : border
            TelescopePreviewTitle = { fg = color.lavender }, -- telescoppe preview : title
            TelescopePreviewBorder = { fg = color.blue }, -- telescope preview : border

            -- [ LSP ]
            LspInfoBorder = { fg = color.blue }, -- lsp information window

            -- [ NEOTREE ]
            NeoTreeDirectoryIcon = { fg = color.lavender }, -- directory icon
            NeoTreeDirectoryName = { fg = color.blue, bold = true, italic = true }, -- directory name
            NeoTreeFileName = { fg = color.overlay1 }, -- file name
            NeoTreeFloatBorder = { fg = color.blue }, -- neotree window that displayed as floating window
            NeoTreeNormal = {}, -- inactive default neotree appearance for text & background
            NeoTreeNormalNC = {}, -- unfocused default appearance for text & background
            NeoTreeGitConflit = { fg = color.red }, -- git file conflict
            NeoTreeGitDeleted = { fg = color.red }, -- git file deleted
            NeoTreeGitModified = { fg = color.yellow }, -- git file modified
            NeoTreeGitStaged = { fg = color.flamingo }, -- git file staged
            NeoTreeGitUnstaged = { fg = color.peach }, -- git file unstaged
            NeoTreeGitUntracked = { fg = color.flamingo }, -- git file untracked
            NeoTreeGitIgnored = { fg = color.overlay1 }, -- git file ignored
            NeoTreeRootName = { fg = color.overlay2, bold = false, italic = true }, -- root directory name
            NeoTreeTabSeparatorActive = { fg = color.mauve }, -- line separator active
            NeoTreeTabSeparatorInactive = { bg = color.subtext0 }, -- line separator active
            NeoTreeWinSeparator = { fg = color.surface2 }, -- neotree border separator color
            NeoTreeIndent = { fg = color.lavender }, -- highlight indentation guides
            -- NeoTreeTabActive = { fg = color.blue }, -- tab active on neotree explorer | didn't ork
            -- NeoTreeTabInactive = { fg = color.surface2 }, -- tab inactive on neotree explorer | didn't work

            -- [ GIT ]
            GitSignChange = { fg = color.sapphire }, -- git changes indicator on the line of the code
          }
        end,
        default_integrations = true,
        integrations = {
          cmp = true,
          mason = true,
          markdown = true,
          notify = true,
          gitsigns = true,
          noice = true,
          nvimtree = true,
          treesitter = true,
          fidget = true,
          which_key = true,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              informations = { "italic" },
            },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
          inaly_hints = {
            background = true,
          },
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
