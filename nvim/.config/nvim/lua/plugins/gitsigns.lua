return {
  {
    -- seamless Git itegration within the nvim editor
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<cr>", {})
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<cr>", {})
    end,
  },
}
