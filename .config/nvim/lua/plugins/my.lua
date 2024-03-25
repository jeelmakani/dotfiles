return {
  {
    "steelsojka/headwind.nvim", -- for sorting taliwind classed
  },
  {
    "sindrets/diffview.nvim", -- for vscode like side by side diff in uncommitted files
  },
  {
    "utilyre/barbecue.nvim", -- VS Code like winbar for the things like "lua > plugins > my.lua > return > {}" on the top of the file
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
  },
  { 'kosayoda/nvim-lightbulb' },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      direction = "horizontal",
      open_mapping = [[<c-\>]],
    },
  },
  {
    "tpope/vim-fugitive",
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  -- {
  --   "vimpostor/vim-lumen",
  -- },
  -- {
  --   "RRethy/vim-illuminate", -- for highlighting all the instances of the word under the cursor
  -- },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   opts = function(_, opts)
  --     -- Other blankline configuration here
  --     return require("indent-rainbowline").make_opts(opts)
  --   end,
  --   dependencies = {
  --     "TheGLander/indent-rainbowline.nvim",
  --   },
  -- },
  -- {
  --   "HiPhish/rainbow-delimiters.nvim", -- for rainbow brackets (bracket pair colorization)
  --   config = function()
  --     local rainbow_delimiters = require("rainbow-delimiters")
  --
  --     require("rainbow-delimiters.setup").setup({
  --       strategy = {
  --         [""] = rainbow_delimiters.strategy["global"],
  --         vim = rainbow_delimiters.strategy["local"],
  --       },
  --       query = {
  --         [""] = "rainbow-delimiters",
  --         lua = "rainbow-blocks",
  --       },
  --       priority = {
  --         [""] = 110,
  --         lua = 210,
  --       },
  --       highlight = {
  --         "RainbowDelimiterRed",
  --         "RainbowDelimiterYellow",
  --         "RainbowDelimiterBlue",
  --         "RainbowDelimiterOrange",
  --         "RainbowDelimiterGreen",
  --         "RainbowDelimiterViolet",
  --         "RainbowDelimiterCyan",
  --       },
  --     })
  --   end,
  -- },
}
