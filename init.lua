-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lazy").setup({
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "echasnovski/mini.nvim",
    },
    opts = {},
  },
})
require("blink.cmp").setup({
  mapping = {
    ["<Tab>"] = "select_next_item", -- Use Tab for completion
    ["<S-Tab>"] = "select_prev_item", -- Shift-Tab for previous item
    ["<CR>"] = "confirm_selection", -- Enter to confirm
    ["<Space>"] = nil, -- Disable Space key for completion
  },
})
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]])
