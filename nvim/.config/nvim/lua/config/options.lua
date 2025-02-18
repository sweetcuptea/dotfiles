local g = vim.g -- for plugin-spesific settings
local opt = vim.opt -- for configuring Neovim's builtin settings

g.mapleader = " " -- sets the leader key to space

vim.scriptencoding = "utf-8" -- sets the script encoding to UTF-8
opt.encoding = "utf-8" -- sets the internal text encoding for Vim
opt.fileencoding = "utf-8" -- sets the file encoding for saving files
opt.spelllang = { "en" } -- sets the spell-checking language to English

g.autoformat = true -- enables automatic formatting of code
g.lazyvim_picker = "auto" -- selects the picker tool LazyVim uses for file/content selection
g.deprecation_warnings = true -- enables warnings about deprecated features
g.trouble_lualine = true -- integrates trouble.nvim with the lualine.nvim status line
-- g.snacks_animate = false -- disables all animation effects for Snacks
g.snacks_animate_scroll = false -- disables scrolling animation effect for Snacks

opt.autoindent = true -- automatically applies indentation based on the previous line
opt.smartindent = true -- adjusts indentation intelligently for programming languages
opt.autowrite = true -- automatically saves changes when switching files or executing certain commands
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- configures clipboard integration with the system
opt.completeopt = "menu,menuone,noselect" -- defines the behavior of the completion menu
opt.conceallevel = 1 -- determines how concealed text is displayed
opt.confirm = true -- prompts to save changes when closing unsaved files
opt.expandtab = true -- converts typed tabs into spaces
opt.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()" -- defines the expression for formatting
opt.grepformat = "%f:%l:%c:%m" -- specifies the format for search results in Vim
opt.grepprg = "rg --vimgrep" -- sets `rg` as the external search program
opt.ignorecase = true -- ignores case during searches
opt.jumpoptions = "view" -- preserves view settings when jumping between marks/positions
opt.linebreak = true -- wraps lines at word boundaries instead of cutting mid-word
opt.wrap = false -- disables line wrapping
opt.list = false -- hides invisible characters like tabs and spaces
opt.mouse = "a" -- enables mouse support in all modes
opt.number = true -- displays absolute line numbers
opt.pumblend = 20 -- sets transparency for popup menus
opt.pumheight = 10 -- limits the height of the popup menu
opt.relativenumber = true -- shows relative line numbers
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" } -- options to save in a session file
opt.shiftround = true -- rounds indentation to the nearest multiple of `shiftwidth`
opt.smartcase = true -- enables case-sensitive search if uppercase letters are used

opt.spelloptions:append("noplainbuffer") -- avoids spell-checking in plain text buffers
opt.splitkeep = "screen" -- keeps the cursor position stable on the screen when splitting windows
opt.tabstop = 2 -- sets the number of spaces a tab character represents
opt.termguicolors = true -- enables true color support in the terminal
opt.undofile = true -- saves undo history to a file for persistence
opt.smoothscroll = true -- enables smooth scrolling for a fluid experience

if vim.fn.has("nvim-0.10") == 1 then
  opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()" -- uses LazyVim's custom folding expression
  opt.foldmethod = "expr" -- sets folding to be based on an expression
  opt.foldtext = "" -- disables custom fold text
else
  opt.foldmethod = "indent" -- sets folding to be based on indentation
  opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()" -- uses LazyVim's custom fold text
end
