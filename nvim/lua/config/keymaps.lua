-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Don't use <leader>l for Lazy
vim.keymap.del("n", "<leader>l")

-- Register keys
local register = require("which-key").register

local leader_mappings = {}
-- error diagnostics
leader_mappings.t = {
  name = "Error Diagnostics",
  L = {
    function()
      vim.cmd("Lspsaga show_line_diagnostics")
    end,
    "Show Line Diagnostics",
  },
  e = {
    function()
      vim.cmd("Lspsaga show_cursor_diagnostics")
    end,
    "Show Cursor Diagnostics",
  },
  h = {
    function()
      vim.cmd("Lspsaga diagnostic_jump_prev")
    end,
    "Jump to Previous Diagnostics",
  },
  l = {
    function()
      vim.cmd("Lspsaga diagnostic_jump_next")
    end,
    "Jump to Next Diagnostic",
  },
  t = {
    function()
      vim.cmd("Trouble")
    end,
    "Open Trouble Diagnostic List",
  },
}
-- Telescope
local telescope_builtin = require("telescope.builtin")
leader_mappings.f = {
  name = "Find",
  f = { telescope_builtin.find_files, "Find Files" },
  g = { telescope_builtin.live_grep, "Live Grep" },
  b = { telescope_builtin.buffers, "Find Buffers" },
  h = { telescope_builtin.help_tags, "Find Help Tags" },
  s = {
    function()
      vim.cmd("SessionManager load_session")
    end,
    "Find Sessions",
  },
  l = { telescope_builtin.treesitter, "Search LSP (Treesitter)" },
  c = { telescope_builtin.commands, "Find Commands" },
  ['"'] = { telescope_builtin.registers, "Find Registers" },
  d = { telescope_builtin.diagnostics, "Find Diagnostics" },
}
leader_mappings.C = {
  name = "Config",
  e = { "<Cmd>Neotree ~/.config/nvim/<CR>", "Edit config" },
  l = { "<Cmd>Lazy<CR>", "Lazy" },
}
-- General mappings
local dap = require("dap")
local dapui = require("dapui")
local mappings = {
  ["<C-b>"] = { "<cmd>Neotree toggle<cr>", "Toggle Neotree" },
  -- -- DAP Shortcuts a la VSCode
  -- ["<F5>"] = {
  --   function()
  --     if dap.session() == nil then
  --       require("dap.ext.vscode").load_launchjs(nil, require("dap-config").json_config)
  --       dap.continue()
  --     else
  --       dap.pause()
  --     end
  --   end,
  --   "Start Debugger",
  -- },
  -- ["<S-F5>"] = {
  --   function()
  --     dap.terminate()
  --     dapui.close()
  --   end,
  --   "Terminate Debugger",
  -- },
  -- ["<C-S-F5>"] = {
  --   function()
  --     dap.retart()
  --   end,
  --   "Restart Debugger",
  -- },
  -- ["<F9>"] = {
  --   function()
  --     dap.toggle_breakpoint()
  --   end,
  --   "Set Breakpoint",
  -- },
  -- ["<F10>"] = {
  --   function()
  --     dap.step_over()
  --   end,
  --   "Step Over",
  -- },
  -- ["<F11>"] = {
  --   function()
  --     dap.step_into()
  --   end,
  --   "Step Into",
  -- },
  -- ["<S-F11>"] = {
  --   function()
  --     dap.step_out()
  --   end,
  --   "Step Out",
  -- },
}

register(leader_mappings, { prefix = "<leader>" })
register(mappings)
