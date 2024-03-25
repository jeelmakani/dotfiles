local wk = require("which-key")

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local k = vim.keymap

-- k.set("v", "J", ":m '>+1<CR>gv=gv")
-- k.set("v", "K", ":m '<-2<CR>gv=gv")

-- doesn't reset the cursor position when joining lines
k.set("n", "J", "mzJ`z")

-- seperating system and local(nvim) clipboard
-- yanking stays in local clipboard
k.set({ "n", "v" }, "<leader>y", [["+y]])
k.set("n", "<leader>Y", [["+Y]]) -- yank to the system clipboard

k.set("n", "Q", "<nop>")

k.set("v", "<leader>1f", vim.lsp.buf.format)
k.set("n", "<leader>1r", vim.lsp.buf.references)
k.set("n", "<leader>ce", function()
  vim.api.nvim_exec("EslintFixAll", false)
end)

wk.register({
  g = {
    -- e = { function() vim.cmd("EslintFixAll", false) end, "eslint fix all" },
    d = {
      o = {
        function()
          vim.cmd("DiffviewOpen")
        end,
        "[D]iffview [O]pen",
      },
      f = {
        function()
          vim.cmd("DiffviewFileHistory")
        end,
        "[D]iffview [F]ile History",
      },
      c = {
        function()
          vim.cmd("DiffviewClose")
        end,
        "[D]iffview [C]lose",
      },
    },
    l = {
      function()
        vim.cmd(":!tmux new-window -c " .. vim.fn.getcwd() .. " -- lazygit")
      end,
      "[L]azygit new tmux window",
    },
    L = {
      function()
        vim.cmd(":!tmux new-window -c " .. vim.fn.getcwd() .. " -- lazydocker")
      end,
      "[L]azydocker new tmux window",
    },
  },
  o = {
    c = {
      -- open current buffer in vscode
      function()
        vim.cmd(":!code " .. vim.fn.getcwd() .. "/" .. vim.fn.expand("%"))
      end,
      "VS[C]ode"
    },
    "[O]pen"
  },
}, { prefix = "<leader>" })
