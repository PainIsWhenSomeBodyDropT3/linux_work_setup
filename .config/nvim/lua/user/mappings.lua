-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
require "harpoon.mark"
require "harpoon.ui"
require "copilot.suggestion"

return {
  -- first key is the mode
  v = {
    ["<leader>p"] = '"_dP',
    ["<leader>y"] = '"+y',

    ["J"] = ":m '>+1<CR><CR>gv=gv",
    ["K"] = ":m '<-2<CR><CR>gv=gv",
  },

  i = {
    -- ["<M-k>"] = ":wq",
    ["<C-l>"] = {
      function() require("copilot.suggestion").accept_word() end,
    },
    ["<C-h>"] = {
      function() require("copilot.suggestion").accept_line() end,
    },
  },

  n = {
    ["<leader>a"] = {
      function(buf) require("harpoon.mark").add_file(buf) end,
    },
    ["<C-e>"] = {
      function() require("harpoon.ui").toggle_quick_menu() end,
    },
    ["<C-h>"] = {
      function() require("harpoon.ui").nav_file(1) end,
    },
    ["<C-j>"] = {
      function() require("harpoon.ui").nav_file(2) end,
    },
    ["<C-k>"] = {
      function() require("harpoon.ui").nav_file(3) end,
    },
    ["<C-l>"] = {
      function() require("harpoon.ui").nav_file(4) end,
    },

    ["<leader>h"] = ":wincmd h<CR>",
    ["<leader>j"] = ":wincmd j<CR>",
    ["<leader>k"] = ":wincmd k<CR>",
    ["<leader>l"] = ":wincmd l<CR>",

    ["<leader>gaj"] = { "<cmd>GoAddTag json<cr>", desc = "Add json to Go structure" },
    ["<leader>grj"] = { "<cmd>GoRmTag json<cr>", desc = "Remove json from Go structure" },
    ["<leader>i"] = { "<cmd>GoIfErr<cr>", desc = "If err" },

    ["<leader>s"] = ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",

    ["<leader>x"] = "<cmd>!chmod +x %<CR>",

    ["J"] = "mzJ`z",

    ["<C-d>"] = "<C-d>zz",
    ["<C-u>"] = "<C-u>zz",

    ["n"] = "nzzzv",
    ["N"] = "Nzzzv",

    ["<leader>y"] = '"+y',
    ["<leader>Y"] = '"+Y',

    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    ["<leader>b"] = { name = "Buffers" },
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
